struct x_Terrain {
  x_NormalScale0 : f32,
  x_NormalScale1 : f32,
  x_NormalScale2 : f32,
  x_NormalScale3 : f32,
  x_Metallic0 : f32,
  x_Metallic1 : f32,
  x_Metallic2 : f32,
  x_Metallic3 : f32,
  x_Smoothness0 : f32,
  x_Smoothness1 : f32,
  x_Smoothness2 : f32,
  x_Smoothness3 : f32,
  x_DiffuseRemapScale0 : vec4<f32>,
  x_DiffuseRemapScale1 : vec4<f32>,
  x_DiffuseRemapScale2 : vec4<f32>,
  x_DiffuseRemapScale3 : vec4<f32>,
  x_MaskMapRemapOffset0 : vec4<f32>,
  x_MaskMapRemapOffset1 : vec4<f32>,
  x_MaskMapRemapOffset2 : vec4<f32>,
  x_MaskMapRemapOffset3 : vec4<f32>,
  x_MaskMapRemapScale0 : vec4<f32>,
  x_MaskMapRemapScale1 : vec4<f32>,
  x_MaskMapRemapScale2 : vec4<f32>,
  x_MaskMapRemapScale3 : vec4<f32>,
  x_Control_ST : vec4<f32>,
  x_Control_TexelSize : vec4<f32>,
  x_DiffuseHasAlpha0 : f32,
  x_DiffuseHasAlpha1 : f32,
  x_DiffuseHasAlpha2 : f32,
  x_DiffuseHasAlpha3 : f32,
  x_LayerHasMask0 : f32,
  x_LayerHasMask1 : f32,
  x_LayerHasMask2 : f32,
  x_LayerHasMask3 : f32,
  x_Splat0_ST : vec4<f32>,
  x_Splat1_ST : vec4<f32>,
  x_Splat2_ST : vec4<f32>,
  x_Splat3_ST : vec4<f32>,
  x_HeightTransition : f32,
  x_NumLayersCount : f32,
}

struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
}

@group(1) @binding(1) var<uniform> x_12 : x_Terrain;

@group(0) @binding(1) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(6) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_71 : PGlobals;

@group(0) @binding(2) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(3) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(4) var x_Splat3 : texture_2d<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_Control : texture_2d<f32>;

@group(0) @binding(5) var sampler_Control : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatb28 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_19 : f32 = x_12.x_MaskMapRemapOffset0.w;
  let x_22 : f32 = x_12.x_MaskMapRemapScale0.w;
  u_xlat0.x = (x_19 + x_22);
  let x_29 : f32 = x_12.x_MaskMapRemapOffset1.w;
  let x_32 : f32 = x_12.x_MaskMapRemapScale1.w;
  u_xlat0.y = (x_29 + x_32);
  let x_38 : f32 = x_12.x_MaskMapRemapOffset2.w;
  let x_41 : f32 = x_12.x_MaskMapRemapScale2.w;
  u_xlat0.z = (x_38 + x_41);
  let x_47 : f32 = x_12.x_MaskMapRemapOffset3.w;
  let x_50 : f32 = x_12.x_MaskMapRemapScale3.w;
  u_xlat0.w = (x_47 + x_50);
  let x_67 : vec4<f32> = vs_TEXCOORD1;
  let x_74 : f32 = x_71.x_GlobalMipBias.x;
  let x_75 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_67.x, x_67.y), x_74);
  u_xlat1 = x_75;
  let x_78 : f32 = u_xlat1.w;
  u_xlat2.x = x_78;
  let x_85 : vec4<f32> = vs_TEXCOORD1;
  let x_88 : f32 = x_71.x_GlobalMipBias.x;
  let x_89 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_85.z, x_85.w), x_88);
  u_xlat3 = x_89;
  let x_91 : f32 = u_xlat3.w;
  u_xlat2.y = x_91;
  let x_99 : vec4<f32> = vs_TEXCOORD2;
  let x_102 : f32 = x_71.x_GlobalMipBias.x;
  let x_103 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_99.x, x_99.y), x_102);
  u_xlat4 = x_103;
  let x_105 : f32 = u_xlat4.w;
  u_xlat2.z = x_105;
  let x_112 : vec4<f32> = vs_TEXCOORD2;
  let x_115 : f32 = x_71.x_GlobalMipBias.x;
  let x_116 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_112.z, x_112.w), x_115);
  u_xlat5 = x_116;
  let x_118 : f32 = u_xlat5.w;
  u_xlat2.w = x_118;
  let x_120 : vec4<f32> = u_xlat2;
  let x_124 : f32 = x_12.x_Smoothness0;
  let x_127 : f32 = x_12.x_Smoothness1;
  let x_130 : f32 = x_12.x_Smoothness2;
  let x_133 : f32 = x_12.x_Smoothness3;
  let x_136 : vec4<f32> = u_xlat0;
  u_xlat0 = ((-(x_120) * vec4<f32>(x_124, x_127, x_130, x_133)) + x_136);
  let x_139 : vec4<f32> = u_xlat2;
  let x_141 : f32 = x_12.x_Smoothness0;
  let x_143 : f32 = x_12.x_Smoothness1;
  let x_145 : f32 = x_12.x_Smoothness2;
  let x_147 : f32 = x_12.x_Smoothness3;
  u_xlat6 = (x_139 * vec4<f32>(x_141, x_143, x_145, x_147));
  let x_152 : f32 = x_12.x_LayerHasMask0;
  let x_155 : f32 = x_12.x_LayerHasMask1;
  let x_158 : f32 = x_12.x_LayerHasMask2;
  let x_161 : f32 = x_12.x_LayerHasMask3;
  let x_163 : vec4<f32> = u_xlat0;
  let x_165 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec4<f32>(x_152, x_155, x_158, x_161) * x_163) + x_165);
  let x_170 : vec4<f32> = x_12.x_Control_TexelSize;
  let x_174 : vec2<f32> = (vec2<f32>(x_170.z, x_170.w) + vec2<f32>(-1.0f, -1.0f));
  let x_175 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_174.x, x_174.y, x_175.z, x_175.w);
  let x_178 : vec4<f32> = vs_TEXCOORD0;
  let x_180 : vec4<f32> = u_xlat6;
  let x_185 : vec2<f32> = ((vec2<f32>(x_178.x, x_178.y) * vec2<f32>(x_180.x, x_180.y)) + vec2<f32>(0.5f, 0.5f));
  let x_186 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_185.x, x_185.y, x_186.z, x_186.w);
  let x_188 : vec4<f32> = u_xlat6;
  let x_191 : vec4<f32> = x_12.x_Control_TexelSize;
  let x_193 : vec2<f32> = (vec2<f32>(x_188.x, x_188.y) * vec2<f32>(x_191.x, x_191.y));
  let x_194 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_193.x, x_193.y, x_194.z, x_194.w);
  let x_201 : vec4<f32> = u_xlat6;
  let x_204 : f32 = x_71.x_GlobalMipBias.x;
  let x_205 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_201.x, x_201.y), x_204);
  u_xlat6 = x_205;
  let x_207 : vec4<f32> = u_xlat6;
  u_xlat7 = (-(x_207) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_212 : vec4<f32> = u_xlat2;
  let x_213 : vec4<f32> = u_xlat7;
  u_xlat2 = (x_212 + -(x_213));
  let x_216 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_216 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_220 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_220, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_225 : vec4<f32> = u_xlat6;
  let x_229 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_225 * vec4<f32>(0.001f, 0.001f, 0.001f, 0.001f)) + x_229);
  let x_231 : vec4<f32> = u_xlat2;
  let x_233 : vec4<f32> = u_xlat6;
  u_xlat7 = (-(x_231) + x_233);
  let x_237 : f32 = u_xlat7.x;
  let x_240 : f32 = x_12.x_DiffuseRemapScale0.w;
  u_xlat8.x = (x_237 * x_240);
  let x_244 : f32 = u_xlat7.y;
  let x_247 : f32 = x_12.x_DiffuseRemapScale1.w;
  u_xlat8.y = (x_244 * x_247);
  let x_251 : f32 = u_xlat7.z;
  let x_254 : f32 = x_12.x_DiffuseRemapScale2.w;
  u_xlat8.z = (x_251 * x_254);
  let x_258 : f32 = u_xlat7.w;
  let x_261 : f32 = x_12.x_DiffuseRemapScale3.w;
  u_xlat8.w = (x_258 * x_261);
  let x_264 : vec4<f32> = u_xlat2;
  let x_265 : vec4<f32> = u_xlat8;
  u_xlat2 = (x_264 + x_265);
  let x_273 : f32 = x_12.x_NumLayersCount;
  u_xlatb28 = (4.0f >= x_273);
  let x_275 : bool = u_xlatb28;
  let x_276 : vec4<f32> = u_xlat2;
  let x_277 : vec4<f32> = u_xlat6;
  u_xlat2 = select(x_277, x_276, vec4<bool>(x_275, x_275, x_275, x_275));
  let x_283 : vec4<f32> = u_xlat2;
  let x_284 : vec4<f32> = u_xlat0;
  SV_Target0.w = dot(x_283, x_284);
  let x_289 : vec4<f32> = u_xlat2;
  let x_292 : vec4<f32> = x_12.x_DiffuseRemapScale1;
  let x_294 : vec3<f32> = (vec3<f32>(x_289.y, x_289.y, x_289.y) * vec3<f32>(x_292.x, x_292.y, x_292.z));
  let x_295 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  let x_297 : vec4<f32> = u_xlat0;
  let x_299 : vec4<f32> = u_xlat3;
  let x_301 : vec3<f32> = (vec3<f32>(x_297.x, x_297.y, x_297.z) * vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_302 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_304 : vec4<f32> = u_xlat2;
  let x_307 : vec4<f32> = x_12.x_DiffuseRemapScale0;
  let x_309 : vec3<f32> = (vec3<f32>(x_304.x, x_304.x, x_304.x) * vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec4<f32> = u_xlat1;
  let x_314 : vec4<f32> = u_xlat3;
  let x_317 : vec4<f32> = u_xlat0;
  let x_319 : vec3<f32> = ((vec3<f32>(x_312.x, x_312.y, x_312.z) * vec3<f32>(x_314.x, x_314.y, x_314.z)) + vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_320 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_322 : vec4<f32> = u_xlat2;
  let x_325 : vec4<f32> = x_12.x_DiffuseRemapScale2;
  let x_327 : vec3<f32> = (vec3<f32>(x_322.z, x_322.z, x_322.z) * vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat2;
  let x_333 : vec4<f32> = x_12.x_DiffuseRemapScale3;
  let x_335 : vec3<f32> = (vec3<f32>(x_330.w, x_330.w, x_330.w) * vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : vec4<f32> = u_xlat4;
  let x_340 : vec4<f32> = u_xlat1;
  let x_343 : vec4<f32> = u_xlat0;
  let x_345 : vec3<f32> = ((vec3<f32>(x_338.x, x_338.y, x_338.z) * vec3<f32>(x_340.x, x_340.y, x_340.z)) + vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_348 : vec4<f32> = u_xlat5;
  let x_350 : vec4<f32> = u_xlat2;
  let x_353 : vec4<f32> = u_xlat0;
  let x_355 : vec3<f32> = ((vec3<f32>(x_348.x, x_348.y, x_348.z) * vec3<f32>(x_350.x, x_350.y, x_350.z)) + vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_356 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

