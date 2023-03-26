using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace TodoApi.Models
{
    public class TodoItem: IValidatableObject
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public long Id { get; set; }

        [Required(ErrorMessage = "Title is required!")]
        [MaxLength(255, ErrorMessage = "Title must be less than {1} characters!")]
        public string? Title { get; set; }

        public string? Description { get; set; }

        //Due date should be a required field
        [Required(ErrorMessage = "The due date is required!")]
        public DateOnly DueDate { get; set; }

        //a number of days after which the TODO item should be marked as expired
        public Int16? DaysToExpired { get; set; }

        public IEnumerable<ValidationResult> Validate(ValidationContext validationContext)
        {
            //The due date is validated to ensure that it is not in the past
            if (DueDate.CompareTo(DateOnly.FromDateTime(DateTime.Now.Date)) < 0)
            {
                yield return new ValidationResult(
                    errorMessage: "DueDate can't be in the past!",
                    memberNames: new[] { "DueDate" }
               );
            }
        }
    }
}
