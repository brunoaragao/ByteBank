// <copyright file="EnderecoAgenciaEntityTypeConfiguration.cs" company="PlaceholderCompany">
// Copyright (c) PlaceholderCompany. All rights reserved.
// </copyright>

using ByteBank.API.Models;

using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace ByteBank.API.Data.EntityConfigurations
{
    public class EnderecoAgenciaEntityTypeConfiguration : IEntityTypeConfiguration<EnderecoAgencia>
    {
        public void Configure(EntityTypeBuilder<EnderecoAgencia> builder)
        {
            builder
                .ToTable("EnderecoAgencia");
        }
    }
}