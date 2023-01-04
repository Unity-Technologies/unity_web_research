struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Lut_Params : vec4<f32>,
  x_UserLut_Params : vec4<f32>,
  x_Bloom_Params : vec4<f32>,
  x_Bloom_RGBM : f32,
  @size(12)
  padding_1 : u32,
  x_LensDirt_Params : vec4<f32>,
  x_LensDirt_Intensity : f32,
  x_Chroma_Params : f32,
  @size(8)
  padding_2 : u32,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_40 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(2) var x_LensDirt_Texture : texture_2d<f32>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb16 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlatb15 : bool;
  var u_xlat15 : f32;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_391 : f32;
  var x_403 : f32;
  var x_415 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlatb1 : vec3<bool>;
  var x_565 : f32;
  var x_577 : f32;
  var x_589 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_721 : f32;
  var x_734 : f32;
  var x_746 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_13.x, x_13.y, x_13.x, x_13.y) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_24 : vec4<f32> = u_xlat0;
  let x_26 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_24.z, x_24.w), vec2<f32>(x_26.z, x_26.w));
  let x_33 : vec4<f32> = u_xlat0;
  let x_34 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_33 * vec4<f32>(x_34.x, x_34.x, x_34.x, x_34.x));
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : f32 = x_40.x_Chroma_Params;
  u_xlat0 = (x_37 * vec4<f32>(x_45, x_45, x_45, x_45));
  let x_58 : vec2<f32> = vs_TEXCOORD0;
  let x_61 : f32 = x_40.x_GlobalMipBias.x;
  let x_62 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_58, x_61);
  u_xlat1.x = x_62.x;
  let x_65 : vec4<f32> = u_xlat0;
  let x_70 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((x_65 * vec4<f32>(-0.333333343f, -0.333333343f, -0.666666687f, -0.666666687f)) + vec4<f32>(x_70.x, x_70.y, x_70.x, x_70.y));
  let x_76 : vec4<f32> = u_xlat0;
  let x_79 : f32 = x_40.x_GlobalMipBias.x;
  let x_80 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_76.x, x_76.y), x_79);
  u_xlat1.y = x_80.y;
  let x_87 : vec4<f32> = u_xlat0;
  let x_90 : f32 = x_40.x_GlobalMipBias.x;
  let x_91 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_87.z, x_87.w), x_90);
  u_xlat1.z = x_91.z;
  let x_99 : vec2<f32> = vs_TEXCOORD0;
  let x_101 : f32 = x_40.x_GlobalMipBias.x;
  let x_102 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, x_99, x_101);
  u_xlat0 = x_102;
  let x_109 : f32 = x_40.x_Bloom_RGBM;
  u_xlatb16 = (0.0f < x_109);
  let x_111 : bool = u_xlatb16;
  if (x_111) {
    let x_115 : vec4<f32> = u_xlat0;
    let x_117 : vec4<f32> = u_xlat0;
    let x_119 : vec3<f32> = (vec3<f32>(x_115.w, x_115.w, x_115.w) * vec3<f32>(x_117.x, x_117.y, x_117.z));
    let x_120 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_119.x, x_119.y, x_119.z, x_120.w);
    let x_122 : vec4<f32> = u_xlat2;
    let x_126 : vec3<f32> = (vec3<f32>(x_122.x, x_122.y, x_122.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_127 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_126.x, x_126.y, x_126.z, x_127.w);
  }
  let x_129 : vec4<f32> = u_xlat0;
  let x_134 : vec4<f32> = x_40.x_Bloom_Params;
  let x_136 : vec3<f32> = (vec3<f32>(x_129.x, x_129.y, x_129.z) * vec3<f32>(x_134.x, x_134.x, x_134.x));
  let x_137 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_139 : vec4<f32> = u_xlat0;
  let x_142 : vec4<f32> = x_40.x_Bloom_Params;
  let x_145 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_139.x, x_139.y, x_139.z) * vec3<f32>(x_142.y, x_142.z, x_142.w)) + x_145);
  let x_147 : vec2<f32> = vs_TEXCOORD0;
  let x_150 : vec4<f32> = x_40.x_LensDirt_Params;
  let x_154 : vec4<f32> = x_40.x_LensDirt_Params;
  let x_156 : vec2<f32> = ((x_147 * vec2<f32>(x_150.x, x_150.y)) + vec2<f32>(x_154.z, x_154.w));
  let x_157 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_156.x, x_156.y, x_157.z, x_157.w);
  let x_163 : vec4<f32> = u_xlat2;
  let x_166 : f32 = x_40.x_GlobalMipBias.x;
  let x_167 : vec4<f32> = textureSampleBias(x_LensDirt_Texture, sampler_LinearClamp, vec2<f32>(x_163.x, x_163.y), x_166);
  let x_168 : vec3<f32> = vec3<f32>(x_167.x, x_167.y, x_167.z);
  let x_169 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_171 : vec4<f32> = u_xlat2;
  let x_175 : f32 = x_40.x_LensDirt_Intensity;
  let x_177 : vec3<f32> = (vec3<f32>(x_171.x, x_171.y, x_171.z) * vec3<f32>(x_175, x_175, x_175));
  let x_178 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_180 : vec4<f32> = u_xlat2;
  let x_182 : vec4<f32> = u_xlat0;
  let x_185 : vec3<f32> = u_xlat1;
  let x_186 : vec3<f32> = ((vec3<f32>(x_180.x, x_180.y, x_180.z) * vec3<f32>(x_182.x, x_182.y, x_182.z)) + x_185);
  let x_187 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_192 : f32 = x_40.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_192);
  let x_194 : bool = u_xlatb15;
  if (x_194) {
    let x_197 : vec2<f32> = vs_TEXCOORD0;
    let x_199 : vec4<f32> = x_40.x_Vignette_Params2;
    let x_202 : vec2<f32> = (x_197 + -(vec2<f32>(x_199.x, x_199.y)));
    let x_203 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_202.x, x_202.y, x_203.z);
    let x_205 : vec3<f32> = u_xlat1;
    let x_209 : vec4<f32> = x_40.x_Vignette_Params2;
    let x_211 : vec2<f32> = (abs(vec2<f32>(x_205.x, x_205.y)) * vec2<f32>(x_209.z, x_209.z));
    let x_212 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_212.x, x_211.x, x_211.y);
    let x_215 : f32 = u_xlat1.y;
    let x_219 : f32 = x_40.x_Vignette_Params1.w;
    u_xlat1.x = (x_215 * x_219);
    let x_223 : vec3<f32> = u_xlat1;
    let x_225 : vec3<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_223.x, x_223.z), vec2<f32>(x_225.x, x_225.z));
    let x_228 : f32 = u_xlat15;
    u_xlat15 = (-(x_228) + 1.0f);
    let x_232 : f32 = u_xlat15;
    u_xlat15 = max(x_232, 0.0f);
    let x_234 : f32 = u_xlat15;
    u_xlat15 = log2(x_234);
    let x_236 : f32 = u_xlat15;
    let x_238 : f32 = x_40.x_Vignette_Params2.w;
    u_xlat15 = (x_236 * x_238);
    let x_240 : f32 = u_xlat15;
    u_xlat15 = exp2(x_240);
    let x_243 : vec4<f32> = x_40.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_243.x, x_243.y, x_243.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_248 : f32 = u_xlat15;
    let x_250 : vec3<f32> = u_xlat1;
    let x_253 : vec4<f32> = x_40.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_248, x_248, x_248) * x_250) + vec3<f32>(x_253.x, x_253.y, x_253.z));
    let x_256 : vec4<f32> = u_xlat0;
    let x_258 : vec3<f32> = u_xlat1;
    let x_259 : vec3<f32> = (vec3<f32>(x_256.x, x_256.y, x_256.z) * x_258);
    let x_260 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  }
  let x_262 : vec4<f32> = u_xlat0;
  let x_266 : vec4<f32> = x_40.x_Lut_Params;
  let x_268 : vec3<f32> = (vec3<f32>(x_262.x, x_262.y, x_262.z) * vec3<f32>(x_266.w, x_266.w, x_266.w));
  let x_269 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_271 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_271.x, x_271.y, x_271.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_276 : vec4<f32> = u_xlat0;
  let x_283 : vec3<f32> = ((vec3<f32>(x_276.x, x_276.y, x_276.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.069599994f, 0.069599994f, 0.069599994f));
  let x_284 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_286 : vec3<f32> = u_xlat1;
  let x_287 : vec4<f32> = u_xlat2;
  let x_292 : vec3<f32> = ((x_286 * vec3<f32>(x_287.x, x_287.y, x_287.z)) + vec3<f32>(0.00544f, 0.00544f, 0.00544f));
  let x_293 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_295 : vec4<f32> = u_xlat0;
  let x_300 : vec3<f32> = ((vec3<f32>(x_295.x, x_295.y, x_295.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.289999992f, 0.289999992f, 0.289999992f));
  let x_301 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
  let x_303 : vec3<f32> = u_xlat1;
  let x_304 : vec4<f32> = u_xlat0;
  let x_309 : vec3<f32> = ((x_303 * vec3<f32>(x_304.x, x_304.y, x_304.z)) + vec3<f32>(0.08160001f, 0.08160001f, 0.08160001f));
  let x_310 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec4<f32> = u_xlat2;
  let x_314 : vec4<f32> = u_xlat0;
  let x_316 : vec3<f32> = (vec3<f32>(x_312.x, x_312.y, x_312.z) / vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat0;
  let x_323 : vec3<f32> = (vec3<f32>(x_319.x, x_319.y, x_319.z) + vec3<f32>(-0.066666663f, -0.066666663f, -0.066666663f));
  let x_324 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_326 : vec4<f32> = u_xlat0;
  let x_328 : vec3<f32> = (vec3<f32>(x_326.x, x_326.y, x_326.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_329 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_331 : vec4<f32> = u_xlat0;
  let x_335 : vec3<f32> = clamp(vec3<f32>(x_331.x, x_331.y, x_331.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_336 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_340 : f32 = x_40.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_340);
  let x_342 : bool = u_xlatb15;
  if (x_342) {
    let x_345 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_345.x, x_345.y, x_345.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_350 : vec4<f32> = u_xlat0;
    let x_352 : vec3<f32> = log2(vec3<f32>(x_350.x, x_350.y, x_350.z));
    let x_353 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
    let x_355 : vec4<f32> = u_xlat2;
    let x_359 : vec3<f32> = (vec3<f32>(x_355.x, x_355.y, x_355.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_360 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
    let x_362 : vec4<f32> = u_xlat2;
    let x_364 : vec3<f32> = exp2(vec3<f32>(x_362.x, x_362.y, x_362.z));
    let x_365 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
    let x_367 : vec4<f32> = u_xlat2;
    let x_374 : vec3<f32> = ((vec3<f32>(x_367.x, x_367.y, x_367.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_375 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
    let x_382 : vec4<f32> = u_xlat0;
    let x_385 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_382.x, x_382.y, x_382.z, x_382.x));
    u_xlatb3 = vec3<bool>(x_385.x, x_385.y, x_385.z);
    let x_388 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_388;
    let x_390 : bool = u_xlatb3.x;
    if (x_390) {
      let x_395 : f32 = u_xlat1.x;
      x_391 = x_395;
    } else {
      let x_398 : f32 = u_xlat2.x;
      x_391 = x_398;
    }
    let x_399 : f32 = x_391;
    hlslcc_movcTemp.x = x_399;
    let x_402 : bool = u_xlatb3.y;
    if (x_402) {
      let x_407 : f32 = u_xlat1.y;
      x_403 = x_407;
    } else {
      let x_410 : f32 = u_xlat2.y;
      x_403 = x_410;
    }
    let x_411 : f32 = x_403;
    hlslcc_movcTemp.y = x_411;
    let x_414 : bool = u_xlatb3.z;
    if (x_414) {
      let x_419 : f32 = u_xlat1.z;
      x_415 = x_419;
    } else {
      let x_422 : f32 = u_xlat2.z;
      x_415 = x_422;
    }
    let x_423 : f32 = x_415;
    hlslcc_movcTemp.z = x_423;
    let x_425 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_425;
    let x_426 : vec3<f32> = u_xlat1;
    let x_429 : vec4<f32> = x_40.x_UserLut_Params;
    let x_431 : vec3<f32> = (vec3<f32>(x_426.z, x_426.x, x_426.y) * vec3<f32>(x_429.z, x_429.z, x_429.z));
    let x_432 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
    let x_435 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_435);
    let x_438 : vec4<f32> = x_40.x_UserLut_Params;
    let x_442 : vec2<f32> = (vec2<f32>(x_438.x, x_438.y) * vec2<f32>(0.5f, 0.5f));
    let x_443 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_442.x, x_443.y, x_443.z, x_442.y);
    let x_445 : vec4<f32> = u_xlat2;
    let x_448 : vec4<f32> = x_40.x_UserLut_Params;
    let x_451 : vec4<f32> = u_xlat2;
    let x_453 : vec2<f32> = ((vec2<f32>(x_445.y, x_445.z) * vec2<f32>(x_448.x, x_448.y)) + vec2<f32>(x_451.x, x_451.w));
    let x_454 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_454.x, x_453.x, x_453.y, x_454.w);
    let x_456 : f32 = u_xlat15;
    let x_458 : f32 = x_40.x_UserLut_Params.y;
    let x_461 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_456 * x_458) + x_461);
    let x_469 : vec4<f32> = u_xlat2;
    let x_471 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_469.x, x_469.z), 0.0f);
    u_xlat3 = vec3<f32>(x_471.x, x_471.y, x_471.z);
    let x_476 : f32 = x_40.x_UserLut_Params.y;
    u_xlat4.x = x_476;
    u_xlat4.y = 0.0f;
    let x_479 : vec4<f32> = u_xlat2;
    let x_481 : vec2<f32> = u_xlat4;
    let x_482 : vec2<f32> = (vec2<f32>(x_479.x, x_479.z) + x_481);
    let x_483 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_482.x, x_482.y, x_483.z, x_483.w);
    let x_488 : vec4<f32> = u_xlat2;
    let x_490 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_488.x, x_488.y), 0.0f);
    let x_491 : vec3<f32> = vec3<f32>(x_490.x, x_490.y, x_490.z);
    let x_492 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
    let x_495 : f32 = u_xlat1.z;
    let x_497 : f32 = x_40.x_UserLut_Params.z;
    let x_499 : f32 = u_xlat15;
    u_xlat15 = ((x_495 * x_497) + -(x_499));
    let x_502 : vec3<f32> = u_xlat3;
    let x_504 : vec4<f32> = u_xlat2;
    let x_506 : vec3<f32> = (-(x_502) + vec3<f32>(x_504.x, x_504.y, x_504.z));
    let x_507 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
    let x_509 : f32 = u_xlat15;
    let x_511 : vec4<f32> = u_xlat2;
    let x_514 : vec3<f32> = u_xlat3;
    let x_515 : vec3<f32> = ((vec3<f32>(x_509, x_509, x_509) * vec3<f32>(x_511.x, x_511.y, x_511.z)) + x_514);
    let x_516 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
    let x_518 : vec3<f32> = u_xlat1;
    let x_520 : vec4<f32> = u_xlat2;
    let x_522 : vec3<f32> = (-(x_518) + vec3<f32>(x_520.x, x_520.y, x_520.z));
    let x_523 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
    let x_526 : vec4<f32> = x_40.x_UserLut_Params;
    let x_528 : vec4<f32> = u_xlat2;
    let x_531 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_526.w, x_526.w, x_526.w) * vec3<f32>(x_528.x, x_528.y, x_528.z)) + x_531);
    let x_533 : vec3<f32> = u_xlat1;
    let x_536 : vec3<f32> = (x_533 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_537 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
    let x_539 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_539 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_543 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_543 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_547 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_547));
    let x_550 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_550 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_554 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_554);
    let x_559 : vec3<f32> = u_xlat1;
    let x_561 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_559.x, x_559.y, x_559.z, x_559.x));
    u_xlatb1 = vec3<bool>(x_561.x, x_561.y, x_561.z);
    let x_564 : bool = u_xlatb1.x;
    if (x_564) {
      let x_569 : f32 = u_xlat2.x;
      x_565 = x_569;
    } else {
      let x_572 : f32 = u_xlat3.x;
      x_565 = x_572;
    }
    let x_573 : f32 = x_565;
    u_xlat0.x = x_573;
    let x_576 : bool = u_xlatb1.y;
    if (x_576) {
      let x_581 : f32 = u_xlat2.y;
      x_577 = x_581;
    } else {
      let x_584 : f32 = u_xlat3.y;
      x_577 = x_584;
    }
    let x_585 : f32 = x_577;
    u_xlat0.y = x_585;
    let x_588 : bool = u_xlatb1.z;
    if (x_588) {
      let x_593 : f32 = u_xlat2.z;
      x_589 = x_593;
    } else {
      let x_596 : f32 = u_xlat3.z;
      x_589 = x_596;
    }
    let x_597 : f32 = x_589;
    u_xlat0.z = x_597;
  }
  let x_599 : vec4<f32> = u_xlat0;
  let x_602 : vec4<f32> = x_40.x_Lut_Params;
  let x_604 : vec3<f32> = (vec3<f32>(x_599.x, x_599.y, x_599.z) * vec3<f32>(x_602.z, x_602.z, x_602.z));
  let x_605 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_604.x, x_604.y, x_605.z, x_604.z);
  let x_608 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_608);
  let x_611 : vec4<f32> = x_40.x_Lut_Params;
  let x_613 : vec2<f32> = (vec2<f32>(x_611.x, x_611.y) * vec2<f32>(0.5f, 0.5f));
  let x_614 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_613.x, x_613.y, x_614.z);
  let x_616 : vec4<f32> = u_xlat0;
  let x_619 : vec4<f32> = x_40.x_Lut_Params;
  let x_622 : vec3<f32> = u_xlat1;
  let x_624 : vec2<f32> = ((vec2<f32>(x_616.x, x_616.y) * vec2<f32>(x_619.x, x_619.y)) + vec2<f32>(x_622.x, x_622.y));
  let x_625 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_625.x, x_624.x, x_624.y);
  let x_627 : f32 = u_xlat15;
  let x_629 : f32 = x_40.x_Lut_Params.y;
  let x_632 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_627 * x_629) + x_632);
  let x_639 : vec3<f32> = u_xlat1;
  let x_641 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_639.x, x_639.z), 0.0f);
  let x_642 : vec3<f32> = vec3<f32>(x_641.x, x_641.y, x_641.z);
  let x_643 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_646 : f32 = x_40.x_Lut_Params.y;
  u_xlat0.x = x_646;
  u_xlat0.y = 0.0f;
  let x_649 : vec4<f32> = u_xlat0;
  let x_651 : vec3<f32> = u_xlat1;
  let x_653 : vec2<f32> = (vec2<f32>(x_649.x, x_649.y) + vec2<f32>(x_651.x, x_651.z));
  let x_654 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_653.x, x_653.y, x_654.z, x_654.w);
  let x_659 : vec4<f32> = u_xlat0;
  let x_661 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_659.x, x_659.y), 0.0f);
  u_xlat1 = vec3<f32>(x_661.x, x_661.y, x_661.z);
  let x_664 : f32 = u_xlat0.z;
  let x_666 : f32 = x_40.x_Lut_Params.z;
  let x_668 : f32 = u_xlat15;
  u_xlat0.x = ((x_664 * x_666) + -(x_668));
  let x_673 : vec4<f32> = u_xlat2;
  let x_676 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_673.x, x_673.y, x_673.z)) + x_676);
  let x_678 : vec4<f32> = u_xlat0;
  let x_680 : vec3<f32> = u_xlat5;
  let x_682 : vec4<f32> = u_xlat2;
  let x_684 : vec3<f32> = ((vec3<f32>(x_678.x, x_678.x, x_678.x) * x_680) + vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_685 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_687 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_687.x, x_687.y, x_687.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_690 : vec4<f32> = u_xlat0;
  let x_693 : vec3<f32> = log2(abs(vec3<f32>(x_690.x, x_690.y, x_690.z)));
  let x_694 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  let x_696 : vec4<f32> = u_xlat2;
  let x_698 : vec3<f32> = (vec3<f32>(x_696.x, x_696.y, x_696.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_699 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_701 : vec4<f32> = u_xlat2;
  let x_703 : vec3<f32> = exp2(vec3<f32>(x_701.x, x_701.y, x_701.z));
  let x_704 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
  let x_706 : vec4<f32> = u_xlat2;
  let x_709 : vec3<f32> = ((vec3<f32>(x_706.x, x_706.y, x_706.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_710 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
  let x_713 : vec4<f32> = u_xlat0;
  let x_715 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_713.x, x_713.y, x_713.z, x_713.x));
  u_xlatb0 = vec3<bool>(x_715.x, x_715.y, x_715.z);
  let x_720 : bool = u_xlatb0.x;
  if (x_720) {
    let x_725 : f32 = u_xlat1.x;
    x_721 = x_725;
  } else {
    let x_728 : f32 = u_xlat2.x;
    x_721 = x_728;
  }
  let x_729 : f32 = x_721;
  SV_Target0.x = x_729;
  let x_733 : bool = u_xlatb0.y;
  if (x_733) {
    let x_738 : f32 = u_xlat1.y;
    x_734 = x_738;
  } else {
    let x_741 : f32 = u_xlat2.y;
    x_734 = x_741;
  }
  let x_742 : f32 = x_734;
  SV_Target0.y = x_742;
  let x_745 : bool = u_xlatb0.z;
  if (x_745) {
    let x_750 : f32 = u_xlat1.z;
    x_746 = x_750;
  } else {
    let x_753 : f32 = u_xlat2.z;
    x_746 = x_753;
  }
  let x_754 : f32 = x_746;
  SV_Target0.z = x_754;
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

