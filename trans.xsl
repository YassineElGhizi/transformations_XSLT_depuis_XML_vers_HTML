<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" doctype-public="-//W3C//DTD HTML 4.01//EN" doctype-system="http://www.w3.org/TR/html4/strict.dtd" indent="yes" ></xsl:output>
	<xsl:template match="/">
		<html>
			<head>
				<link rel="stylesheet" href="atelier2.css"/>
				<title>Atelier N2</title>
			</head> 
			<body>
				<div class="center">
					<xsl:for-each select="players/player" >
						<xsl:sort select="rank"/>
							<table cellspacing="0" cellpadding="0">
								<tr>
									<th rowspan="6">							
										<img width="250" height="350">
											<xsl:attribute name="src">
												<xsl:value-of select="picture"/>
											</xsl:attribute>
										</img>
									</th>
									<th class="extendedColumn compressedHeight myBgColor">Player Data<br/></th>					
								</tr>
									
								<tr>
									<td class="compressedHeight bg1">Name :<br/><span class="data"><xsl:value-of select="name"/></span></td>
								</tr>
								<tr>
									<td class="compressedHeight bg2">Known As :<br/>-</td>
								</tr>
								<tr>
									<td class="compressedHeight bg1">Age :<br/><span class="data"><xsl:value-of select="age"/></span></td>
								</tr>
								<tr>
									<td class="compressedHeight bg2">Team :<br/><span class="data"><xsl:value-of select="team"/></span></td>
								</tr>
								<tr>
									<td class="compressedHeight bg1">League :<br/><span class="data"><xsl:value-of select="league"/></span></td>
								</tr>
							</table>
						<br/><br/>
					</xsl:for-each>
				</div>
			</body>
		</html>
 	</xsl:template>
</xsl:stylesheet>