struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Lut_Params : vec4<f32>,
  x_UserLut_Params : vec4<f32>,
  x_Distortion_Params1 : vec4<f32>,
  x_Distortion_Params2 : vec4<f32>,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
  x_Grain_Params : vec2<f32>,
  @size(8)
  padding_1 : u32,
  x_Grain_TilingParams : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(1) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat10 : vec2<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlat6 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat11 : f32;
  var u_xlat16 : f32;
  var u_xlat7 : f32;
  var u_xlat12 : f32;
  var u_xlatb17 : bool;
  var u_xlatb1 : vec3<bool>;
  var x_231 : f32;
  var u_xlatb15 : bool;
  var u_xlat15 : f32;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_476 : f32;
  var x_488 : f32;
  var x_500 : f32;
  var u_xlat4 : vec2<f32>;
  var x_645 : f32;
  var x_657 : f32;
  var x_669 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_870 : f32;
  var x_883 : f32;
  var x_895 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_16.x, x_16.y, x_17.z, x_17.w);
  let x_21 : vec4<f32> = u_xlat0;
  let x_30 : vec4<f32> = x_25.x_Distortion_Params2;
  u_xlat10 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_30.z, x_30.z)) + vec2<f32>(0.5f, 0.5f));
  let x_36 : vec4<f32> = u_xlat0;
  let x_39 : vec4<f32> = x_25.x_Distortion_Params2;
  let x_44 : vec4<f32> = x_25.x_Distortion_Params1;
  let x_47 : vec2<f32> = ((vec2<f32>(x_36.x, x_36.y) * vec2<f32>(x_39.z, x_39.z)) + -(vec2<f32>(x_44.x, x_44.y)));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_48.z, x_48.w);
  let x_50 : vec4<f32> = u_xlat0;
  let x_53 : vec4<f32> = x_25.x_Distortion_Params1;
  let x_55 : vec2<f32> = (vec2<f32>(x_50.x, x_50.y) * vec2<f32>(x_53.z, x_53.w));
  let x_56 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_55.x, x_55.y, x_56.z, x_56.w);
  let x_61 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_61.x, x_61.y), vec2<f32>(x_63.x, x_63.y));
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_71);
  let x_81 : f32 = x_25.x_Distortion_Params2.w;
  u_xlatb6 = (0.0f < x_81);
  let x_83 : bool = u_xlatb6;
  if (x_83) {
    let x_87 : vec3<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_25.x_Distortion_Params2;
    let x_92 : vec2<f32> = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_93 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_92.x, x_92.y, x_93.z);
    let x_97 : f32 = u_xlat6.x;
    u_xlat2.x = sin(x_97);
    let x_102 : f32 = u_xlat6.x;
    u_xlat3.x = cos(x_102);
    let x_106 : f32 = u_xlat2.x;
    let x_108 : f32 = u_xlat3.x;
    u_xlat6.x = (x_106 / x_108);
    let x_115 : f32 = u_xlat6.y;
    u_xlat11 = (1.0f / x_115);
    let x_118 : f32 = u_xlat6.x;
    let x_119 : f32 = u_xlat11;
    u_xlat6.x = ((x_118 * x_119) + -1.0f);
    let x_124 : vec4<f32> = u_xlat0;
    let x_126 : vec3<f32> = u_xlat6;
    let x_129 : vec2<f32> = u_xlat10;
    let x_130 : vec2<f32> = ((vec2<f32>(x_124.x, x_124.y) * vec2<f32>(x_126.x, x_126.x)) + x_129);
    let x_131 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_130.x, x_130.y, x_131.z);
  } else {
    let x_136 : f32 = u_xlat1.x;
    u_xlat16 = (1.0f / x_136);
    let x_138 : f32 = u_xlat16;
    let x_140 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat16 = (x_138 * x_140);
    let x_143 : f32 = u_xlat1.x;
    let x_145 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat1.x = (x_143 * x_145);
    let x_149 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_149), 1.0f);
    let x_155 : f32 = u_xlat1.x;
    u_xlat7 = max(abs(x_155), 1.0f);
    let x_158 : f32 = u_xlat7;
    u_xlat7 = (1.0f / x_158);
    let x_160 : f32 = u_xlat7;
    let x_162 : f32 = u_xlat2.x;
    u_xlat2.x = (x_160 * x_162);
    let x_166 : f32 = u_xlat2.x;
    let x_168 : f32 = u_xlat2.x;
    u_xlat7 = (x_166 * x_168);
    let x_171 : f32 = u_xlat7;
    u_xlat12 = ((x_171 * 0.0208351f) + -0.085133001f);
    let x_176 : f32 = u_xlat7;
    let x_177 : f32 = u_xlat12;
    u_xlat12 = ((x_176 * x_177) + 0.180141002f);
    let x_181 : f32 = u_xlat7;
    let x_182 : f32 = u_xlat12;
    u_xlat12 = ((x_181 * x_182) + -0.330299497f);
    let x_186 : f32 = u_xlat7;
    let x_187 : f32 = u_xlat12;
    u_xlat7 = ((x_186 * x_187) + 0.999866009f);
    let x_191 : f32 = u_xlat7;
    let x_193 : f32 = u_xlat2.x;
    u_xlat12 = (x_191 * x_193);
    let x_197 : f32 = u_xlat1.x;
    u_xlatb17 = (1.0f < abs(x_197));
    let x_200 : f32 = u_xlat12;
    u_xlat12 = ((x_200 * -2.0f) + 1.570796371f);
    let x_205 : bool = u_xlatb17;
    let x_206 : f32 = u_xlat12;
    u_xlat12 = select(0.0f, x_206, x_205);
    let x_209 : f32 = u_xlat2.x;
    let x_210 : f32 = u_xlat7;
    let x_212 : f32 = u_xlat12;
    u_xlat2.x = ((x_209 * x_210) + x_212);
    let x_216 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_216, 1.0f);
    let x_223 : f32 = u_xlat1.x;
    let x_225 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_223 < -(x_225));
    let x_230 : bool = u_xlatb1.x;
    if (x_230) {
      let x_235 : f32 = u_xlat2.x;
      x_231 = -(x_235);
    } else {
      let x_239 : f32 = u_xlat2.x;
      x_231 = x_239;
    }
    let x_240 : f32 = x_231;
    u_xlat1.x = x_240;
    let x_242 : f32 = u_xlat16;
    let x_244 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_242 * x_244) + -1.0f);
    let x_248 : vec4<f32> = u_xlat0;
    let x_250 : vec3<f32> = u_xlat1;
    let x_253 : vec2<f32> = u_xlat10;
    let x_254 : vec2<f32> = ((vec2<f32>(x_248.x, x_248.y) * vec2<f32>(x_250.x, x_250.x)) + x_253);
    let x_255 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_254.x, x_254.y, x_255.z);
  }
  let x_267 : vec3<f32> = u_xlat6;
  let x_271 : f32 = x_25.x_GlobalMipBias.x;
  let x_272 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_267.x, x_267.y), x_271);
  let x_273 : vec3<f32> = vec3<f32>(x_272.x, x_272.y, x_272.z);
  let x_274 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_280 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_280);
  let x_282 : bool = u_xlatb15;
  if (x_282) {
    let x_285 : vec3<f32> = u_xlat6;
    let x_288 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_291 : vec2<f32> = (vec2<f32>(x_285.x, x_285.y) + -(vec2<f32>(x_288.x, x_288.y)));
    let x_292 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_291.x, x_291.y, x_292.z);
    let x_294 : vec3<f32> = u_xlat1;
    let x_298 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_300 : vec2<f32> = (abs(vec2<f32>(x_294.x, x_294.y)) * vec2<f32>(x_298.z, x_298.z));
    let x_301 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_301.x, x_300.x, x_300.y);
    let x_304 : f32 = u_xlat1.y;
    let x_307 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_304 * x_307);
    let x_311 : vec3<f32> = u_xlat1;
    let x_313 : vec3<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_311.x, x_311.z), vec2<f32>(x_313.x, x_313.z));
    let x_316 : f32 = u_xlat15;
    u_xlat15 = (-(x_316) + 1.0f);
    let x_319 : f32 = u_xlat15;
    u_xlat15 = max(x_319, 0.0f);
    let x_321 : f32 = u_xlat15;
    u_xlat15 = log2(x_321);
    let x_323 : f32 = u_xlat15;
    let x_325 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat15 = (x_323 * x_325);
    let x_327 : f32 = u_xlat15;
    u_xlat15 = exp2(x_327);
    let x_330 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_330.x, x_330.y, x_330.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_335 : f32 = u_xlat15;
    let x_337 : vec3<f32> = u_xlat1;
    let x_340 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_335, x_335, x_335) * x_337) + vec3<f32>(x_340.x, x_340.y, x_340.z));
    let x_343 : vec4<f32> = u_xlat0;
    let x_345 : vec3<f32> = u_xlat1;
    let x_346 : vec3<f32> = (vec3<f32>(x_343.x, x_343.y, x_343.z) * x_345);
    let x_347 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  }
  let x_349 : vec4<f32> = u_xlat0;
  let x_353 : vec4<f32> = x_25.x_Lut_Params;
  let x_355 : vec3<f32> = (vec3<f32>(x_349.x, x_349.y, x_349.z) * vec3<f32>(x_353.w, x_353.w, x_353.w));
  let x_356 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_358 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_358.x, x_358.y, x_358.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_363 : vec4<f32> = u_xlat0;
  let x_370 : vec3<f32> = ((vec3<f32>(x_363.x, x_363.y, x_363.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.069599994f, 0.069599994f, 0.069599994f));
  let x_371 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_373 : vec3<f32> = u_xlat1;
  let x_374 : vec4<f32> = u_xlat2;
  let x_379 : vec3<f32> = ((x_373 * vec3<f32>(x_374.x, x_374.y, x_374.z)) + vec3<f32>(0.00544f, 0.00544f, 0.00544f));
  let x_380 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_382 : vec4<f32> = u_xlat0;
  let x_387 : vec3<f32> = ((vec3<f32>(x_382.x, x_382.y, x_382.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.289999992f, 0.289999992f, 0.289999992f));
  let x_388 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_390 : vec3<f32> = u_xlat1;
  let x_391 : vec4<f32> = u_xlat0;
  let x_396 : vec3<f32> = ((x_390 * vec3<f32>(x_391.x, x_391.y, x_391.z)) + vec3<f32>(0.08160001f, 0.08160001f, 0.08160001f));
  let x_397 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_399 : vec4<f32> = u_xlat2;
  let x_401 : vec4<f32> = u_xlat0;
  let x_403 : vec3<f32> = (vec3<f32>(x_399.x, x_399.y, x_399.z) / vec3<f32>(x_401.x, x_401.y, x_401.z));
  let x_404 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_406 : vec4<f32> = u_xlat0;
  let x_410 : vec3<f32> = (vec3<f32>(x_406.x, x_406.y, x_406.z) + vec3<f32>(-0.066666663f, -0.066666663f, -0.066666663f));
  let x_411 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_413 : vec4<f32> = u_xlat0;
  let x_415 : vec3<f32> = (vec3<f32>(x_413.x, x_413.y, x_413.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_416 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_418 : vec4<f32> = u_xlat0;
  let x_422 : vec3<f32> = clamp(vec3<f32>(x_418.x, x_418.y, x_418.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_423 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  let x_427 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_427);
  let x_429 : bool = u_xlatb15;
  if (x_429) {
    let x_432 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_432.x, x_432.y, x_432.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_437 : vec4<f32> = u_xlat0;
    let x_439 : vec3<f32> = log2(vec3<f32>(x_437.x, x_437.y, x_437.z));
    let x_440 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
    let x_442 : vec4<f32> = u_xlat2;
    let x_446 : vec3<f32> = (vec3<f32>(x_442.x, x_442.y, x_442.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_447 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
    let x_449 : vec4<f32> = u_xlat2;
    let x_451 : vec3<f32> = exp2(vec3<f32>(x_449.x, x_449.y, x_449.z));
    let x_452 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
    let x_454 : vec4<f32> = u_xlat2;
    let x_461 : vec3<f32> = ((vec3<f32>(x_454.x, x_454.y, x_454.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_462 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
    let x_467 : vec4<f32> = u_xlat0;
    let x_470 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_467.x, x_467.y, x_467.z, x_467.x));
    u_xlatb3 = vec3<bool>(x_470.x, x_470.y, x_470.z);
    let x_473 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_473;
    let x_475 : bool = u_xlatb3.x;
    if (x_475) {
      let x_480 : f32 = u_xlat1.x;
      x_476 = x_480;
    } else {
      let x_483 : f32 = u_xlat2.x;
      x_476 = x_483;
    }
    let x_484 : f32 = x_476;
    hlslcc_movcTemp.x = x_484;
    let x_487 : bool = u_xlatb3.y;
    if (x_487) {
      let x_492 : f32 = u_xlat1.y;
      x_488 = x_492;
    } else {
      let x_495 : f32 = u_xlat2.y;
      x_488 = x_495;
    }
    let x_496 : f32 = x_488;
    hlslcc_movcTemp.y = x_496;
    let x_499 : bool = u_xlatb3.z;
    if (x_499) {
      let x_504 : f32 = u_xlat1.z;
      x_500 = x_504;
    } else {
      let x_507 : f32 = u_xlat2.z;
      x_500 = x_507;
    }
    let x_508 : f32 = x_500;
    hlslcc_movcTemp.z = x_508;
    let x_510 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_510;
    let x_511 : vec3<f32> = u_xlat1;
    let x_514 : vec4<f32> = x_25.x_UserLut_Params;
    let x_516 : vec3<f32> = (vec3<f32>(x_511.z, x_511.x, x_511.y) * vec3<f32>(x_514.z, x_514.z, x_514.z));
    let x_517 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
    let x_520 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_520);
    let x_523 : vec4<f32> = x_25.x_UserLut_Params;
    let x_525 : vec2<f32> = (vec2<f32>(x_523.x, x_523.y) * vec2<f32>(0.5f, 0.5f));
    let x_526 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_525.x, x_526.y, x_526.z, x_525.y);
    let x_528 : vec4<f32> = u_xlat2;
    let x_531 : vec4<f32> = x_25.x_UserLut_Params;
    let x_534 : vec4<f32> = u_xlat2;
    let x_536 : vec2<f32> = ((vec2<f32>(x_528.y, x_528.z) * vec2<f32>(x_531.x, x_531.y)) + vec2<f32>(x_534.x, x_534.w));
    let x_537 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_537.x, x_536.x, x_536.y, x_537.w);
    let x_539 : f32 = u_xlat15;
    let x_541 : f32 = x_25.x_UserLut_Params.y;
    let x_544 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_539 * x_541) + x_544);
    let x_551 : vec4<f32> = u_xlat2;
    let x_553 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_551.x, x_551.z), 0.0f);
    u_xlat3 = vec3<f32>(x_553.x, x_553.y, x_553.z);
    let x_557 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_557;
    u_xlat4.y = 0.0f;
    let x_560 : vec4<f32> = u_xlat2;
    let x_562 : vec2<f32> = u_xlat4;
    let x_563 : vec2<f32> = (vec2<f32>(x_560.x, x_560.z) + x_562);
    let x_564 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_563.x, x_563.y, x_564.z, x_564.w);
    let x_569 : vec4<f32> = u_xlat2;
    let x_571 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_569.x, x_569.y), 0.0f);
    let x_572 : vec3<f32> = vec3<f32>(x_571.x, x_571.y, x_571.z);
    let x_573 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_572.x, x_572.y, x_572.z, x_573.w);
    let x_576 : f32 = u_xlat1.z;
    let x_578 : f32 = x_25.x_UserLut_Params.z;
    let x_580 : f32 = u_xlat15;
    u_xlat15 = ((x_576 * x_578) + -(x_580));
    let x_583 : vec3<f32> = u_xlat3;
    let x_585 : vec4<f32> = u_xlat2;
    let x_587 : vec3<f32> = (-(x_583) + vec3<f32>(x_585.x, x_585.y, x_585.z));
    let x_588 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_587.x, x_587.y, x_587.z, x_588.w);
    let x_590 : f32 = u_xlat15;
    let x_592 : vec4<f32> = u_xlat2;
    let x_595 : vec3<f32> = u_xlat3;
    let x_596 : vec3<f32> = ((vec3<f32>(x_590, x_590, x_590) * vec3<f32>(x_592.x, x_592.y, x_592.z)) + x_595);
    let x_597 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
    let x_599 : vec3<f32> = u_xlat1;
    let x_601 : vec4<f32> = u_xlat2;
    let x_603 : vec3<f32> = (-(x_599) + vec3<f32>(x_601.x, x_601.y, x_601.z));
    let x_604 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
    let x_607 : vec4<f32> = x_25.x_UserLut_Params;
    let x_609 : vec4<f32> = u_xlat2;
    let x_612 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_607.w, x_607.w, x_607.w) * vec3<f32>(x_609.x, x_609.y, x_609.z)) + x_612);
    let x_614 : vec3<f32> = u_xlat1;
    let x_617 : vec3<f32> = (x_614 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_618 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
    let x_620 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_620 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_624 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_624 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_628 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_628));
    let x_631 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_631 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_635 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_635);
    let x_639 : vec3<f32> = u_xlat1;
    let x_641 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_639.x, x_639.y, x_639.z, x_639.x));
    u_xlatb1 = vec3<bool>(x_641.x, x_641.y, x_641.z);
    let x_644 : bool = u_xlatb1.x;
    if (x_644) {
      let x_649 : f32 = u_xlat2.x;
      x_645 = x_649;
    } else {
      let x_652 : f32 = u_xlat3.x;
      x_645 = x_652;
    }
    let x_653 : f32 = x_645;
    u_xlat0.x = x_653;
    let x_656 : bool = u_xlatb1.y;
    if (x_656) {
      let x_661 : f32 = u_xlat2.y;
      x_657 = x_661;
    } else {
      let x_664 : f32 = u_xlat3.y;
      x_657 = x_664;
    }
    let x_665 : f32 = x_657;
    u_xlat0.y = x_665;
    let x_668 : bool = u_xlatb1.z;
    if (x_668) {
      let x_673 : f32 = u_xlat2.z;
      x_669 = x_673;
    } else {
      let x_676 : f32 = u_xlat3.z;
      x_669 = x_676;
    }
    let x_677 : f32 = x_669;
    u_xlat0.z = x_677;
  }
  let x_679 : vec4<f32> = u_xlat0;
  let x_682 : vec4<f32> = x_25.x_Lut_Params;
  let x_684 : vec3<f32> = (vec3<f32>(x_679.x, x_679.y, x_679.z) * vec3<f32>(x_682.z, x_682.z, x_682.z));
  let x_685 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_684.x, x_684.y, x_685.z, x_684.z);
  let x_688 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_688);
  let x_691 : vec4<f32> = x_25.x_Lut_Params;
  let x_693 : vec2<f32> = (vec2<f32>(x_691.x, x_691.y) * vec2<f32>(0.5f, 0.5f));
  let x_694 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_693.x, x_693.y, x_694.z);
  let x_696 : vec4<f32> = u_xlat0;
  let x_699 : vec4<f32> = x_25.x_Lut_Params;
  let x_702 : vec3<f32> = u_xlat1;
  let x_704 : vec2<f32> = ((vec2<f32>(x_696.x, x_696.y) * vec2<f32>(x_699.x, x_699.y)) + vec2<f32>(x_702.x, x_702.y));
  let x_705 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_705.x, x_704.x, x_704.y);
  let x_707 : f32 = u_xlat15;
  let x_709 : f32 = x_25.x_Lut_Params.y;
  let x_712 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_707 * x_709) + x_712);
  let x_719 : vec3<f32> = u_xlat1;
  let x_721 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_719.x, x_719.z), 0.0f);
  let x_722 : vec3<f32> = vec3<f32>(x_721.x, x_721.y, x_721.z);
  let x_723 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
  let x_726 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_726;
  u_xlat0.y = 0.0f;
  let x_729 : vec4<f32> = u_xlat0;
  let x_731 : vec3<f32> = u_xlat1;
  let x_733 : vec2<f32> = (vec2<f32>(x_729.x, x_729.y) + vec2<f32>(x_731.x, x_731.z));
  let x_734 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_733.x, x_733.y, x_734.z, x_734.w);
  let x_739 : vec4<f32> = u_xlat0;
  let x_741 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_739.x, x_739.y), 0.0f);
  u_xlat1 = vec3<f32>(x_741.x, x_741.y, x_741.z);
  let x_744 : f32 = u_xlat0.z;
  let x_746 : f32 = x_25.x_Lut_Params.z;
  let x_748 : f32 = u_xlat15;
  u_xlat0.x = ((x_744 * x_746) + -(x_748));
  let x_753 : vec4<f32> = u_xlat2;
  let x_756 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_753.x, x_753.y, x_753.z)) + x_756);
  let x_758 : vec4<f32> = u_xlat0;
  let x_760 : vec3<f32> = u_xlat5;
  let x_762 : vec4<f32> = u_xlat2;
  let x_764 : vec3<f32> = ((vec3<f32>(x_758.x, x_758.x, x_758.x) * x_760) + vec3<f32>(x_762.x, x_762.y, x_762.z));
  let x_765 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
  let x_767 : vec2<f32> = vs_TEXCOORD0;
  let x_770 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_774 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_776 : vec2<f32> = ((x_767 * vec2<f32>(x_770.x, x_770.y)) + vec2<f32>(x_774.z, x_774.w));
  let x_777 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_776.x, x_776.y, x_777.z);
  let x_784 : vec3<f32> = u_xlat1;
  let x_787 : f32 = x_25.x_GlobalMipBias.x;
  let x_788 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_784.x, x_784.y), x_787);
  u_xlat15 = x_788.w;
  let x_790 : f32 = u_xlat15;
  u_xlat15 = (x_790 + -0.5f);
  let x_792 : f32 = u_xlat15;
  let x_793 : f32 = u_xlat15;
  u_xlat15 = (x_792 + x_793);
  let x_795 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_795.x, x_795.y, x_795.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_804 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_804);
  let x_809 : f32 = x_25.x_Grain_Params.y;
  let x_811 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_809 * -(x_811)) + 1.0f);
  let x_816 : f32 = u_xlat15;
  let x_818 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_816, x_816, x_816) * vec3<f32>(x_818.x, x_818.y, x_818.z));
  let x_821 : vec3<f32> = u_xlat6;
  let x_824 : vec2<f32> = x_25.x_Grain_Params;
  u_xlat6 = (x_821 * vec3<f32>(x_824.x, x_824.x, x_824.x));
  let x_827 : vec3<f32> = u_xlat6;
  let x_828 : vec3<f32> = u_xlat1;
  let x_831 : vec4<f32> = u_xlat0;
  let x_833 : vec3<f32> = ((x_827 * vec3<f32>(x_828.x, x_828.x, x_828.x)) + vec3<f32>(x_831.x, x_831.y, x_831.z));
  let x_834 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_833.x, x_833.y, x_833.z, x_834.w);
  let x_836 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_836.x, x_836.y, x_836.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_839 : vec4<f32> = u_xlat0;
  let x_842 : vec3<f32> = log2(abs(vec3<f32>(x_839.x, x_839.y, x_839.z)));
  let x_843 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
  let x_845 : vec4<f32> = u_xlat2;
  let x_847 : vec3<f32> = (vec3<f32>(x_845.x, x_845.y, x_845.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_848 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_850 : vec4<f32> = u_xlat2;
  let x_852 : vec3<f32> = exp2(vec3<f32>(x_850.x, x_850.y, x_850.z));
  let x_853 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_855 : vec4<f32> = u_xlat2;
  let x_858 : vec3<f32> = ((vec3<f32>(x_855.x, x_855.y, x_855.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_859 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_862 : vec4<f32> = u_xlat0;
  let x_864 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_862.x, x_862.y, x_862.z, x_862.x));
  u_xlatb0 = vec3<bool>(x_864.x, x_864.y, x_864.z);
  let x_869 : bool = u_xlatb0.x;
  if (x_869) {
    let x_874 : f32 = u_xlat1.x;
    x_870 = x_874;
  } else {
    let x_877 : f32 = u_xlat2.x;
    x_870 = x_877;
  }
  let x_878 : f32 = x_870;
  SV_Target0.x = x_878;
  let x_882 : bool = u_xlatb0.y;
  if (x_882) {
    let x_887 : f32 = u_xlat1.y;
    x_883 = x_887;
  } else {
    let x_890 : f32 = u_xlat2.y;
    x_883 = x_890;
  }
  let x_891 : f32 = x_883;
  SV_Target0.y = x_891;
  let x_894 : bool = u_xlatb0.z;
  if (x_894) {
    let x_899 : f32 = u_xlat1.z;
    x_895 = x_899;
  } else {
    let x_902 : f32 = u_xlat2.z;
    x_895 = x_902;
  }
  let x_903 : f32 = x_895;
  SV_Target0.z = x_903;
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

