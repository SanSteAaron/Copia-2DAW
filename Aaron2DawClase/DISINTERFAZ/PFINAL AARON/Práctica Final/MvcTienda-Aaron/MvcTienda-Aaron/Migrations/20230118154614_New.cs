using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace MvcTienda_Aaron.Migrations
{
    public partial class New : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "Stock",
                table: "ProductosTalla",
                type: "int",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Stock",
                table: "ProductosTalla");
        }
    }
}
