struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Lut_Params : vec4<f32>,
  x_UserLut_Params : vec4<f32>,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
  x_Grain_Params : vec2<f32>,
  @size(8)
  padding_1 : u32,
  x_Grain_TilingParams : vec4<f32>,
}

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(1) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlatb15 : bool;
  var u_xlat1 : vec3<f32>;
  var u_xlat15 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_191 : f32;
  var x_203 : f32;
  var x_215 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlatb1 : vec3<bool>;
  var x_365 : f32;
  var x_377 : f32;
  var x_389 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_33 : f32 = x_26.x_GlobalMipBias.x;
  let x_34 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_23, x_33);
  let x_36 : vec3<f32> = vec3<f32>(x_34.x, x_34.y, x_34.z);
  let x_37 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_36.x, x_36.y, x_36.z, x_37.w);
  let x_46 : f32 = x_26.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_46);
  let x_48 : bool = u_xlatb15;
  if (x_48) {
    let x_53 : vec2<f32> = vs_TEXCOORD0;
    let x_56 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_59 : vec2<f32> = (x_53 + -(vec2<f32>(x_56.x, x_56.y)));
    let x_60 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_59.x, x_59.y, x_60.z);
    let x_62 : vec3<f32> = u_xlat1;
    let x_66 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_68 : vec2<f32> = (abs(vec2<f32>(x_62.x, x_62.y)) * vec2<f32>(x_66.z, x_66.z));
    let x_69 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_69.x, x_68.x, x_68.y);
    let x_74 : f32 = u_xlat1.y;
    let x_78 : f32 = x_26.x_Vignette_Params1.w;
    u_xlat1.x = (x_74 * x_78);
    let x_82 : vec3<f32> = u_xlat1;
    let x_84 : vec3<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_82.x, x_82.z), vec2<f32>(x_84.x, x_84.z));
    let x_87 : f32 = u_xlat15;
    u_xlat15 = (-(x_87) + 1.0f);
    let x_91 : f32 = u_xlat15;
    u_xlat15 = max(x_91, 0.0f);
    let x_93 : f32 = u_xlat15;
    u_xlat15 = log2(x_93);
    let x_95 : f32 = u_xlat15;
    let x_97 : f32 = x_26.x_Vignette_Params2.w;
    u_xlat15 = (x_95 * x_97);
    let x_99 : f32 = u_xlat15;
    u_xlat15 = exp2(x_99);
    let x_102 : vec4<f32> = x_26.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_102.x, x_102.y, x_102.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_107 : f32 = u_xlat15;
    let x_109 : vec3<f32> = u_xlat1;
    let x_112 : vec4<f32> = x_26.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_107, x_107, x_107) * x_109) + vec3<f32>(x_112.x, x_112.y, x_112.z));
    let x_115 : vec4<f32> = u_xlat0;
    let x_117 : vec3<f32> = u_xlat1;
    let x_118 : vec3<f32> = (vec3<f32>(x_115.x, x_115.y, x_115.z) * x_117);
    let x_119 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
  }
  let x_121 : vec4<f32> = u_xlat0;
  let x_125 : vec4<f32> = x_26.x_Lut_Params;
  let x_127 : vec3<f32> = (vec3<f32>(x_121.x, x_121.y, x_121.z) * vec3<f32>(x_125.w, x_125.w, x_125.w));
  let x_128 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_130 : vec4<f32> = u_xlat0;
  let x_134 : vec3<f32> = clamp(vec3<f32>(x_130.x, x_130.y, x_130.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_135 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
  let x_139 : f32 = x_26.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_139);
  let x_141 : bool = u_xlatb15;
  if (x_141) {
    let x_144 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_144.x, x_144.y, x_144.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_150 : vec4<f32> = u_xlat0;
    let x_152 : vec3<f32> = log2(vec3<f32>(x_150.x, x_150.y, x_150.z));
    let x_153 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_152.x, x_152.y, x_152.z, x_153.w);
    let x_155 : vec4<f32> = u_xlat2;
    let x_159 : vec3<f32> = (vec3<f32>(x_155.x, x_155.y, x_155.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_160 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
    let x_162 : vec4<f32> = u_xlat2;
    let x_164 : vec3<f32> = exp2(vec3<f32>(x_162.x, x_162.y, x_162.z));
    let x_165 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
    let x_167 : vec4<f32> = u_xlat2;
    let x_174 : vec3<f32> = ((vec3<f32>(x_167.x, x_167.y, x_167.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_175 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
    let x_182 : vec4<f32> = u_xlat0;
    let x_185 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_182.x, x_182.y, x_182.z, x_182.x));
    u_xlatb3 = vec3<bool>(x_185.x, x_185.y, x_185.z);
    let x_188 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_188;
    let x_190 : bool = u_xlatb3.x;
    if (x_190) {
      let x_195 : f32 = u_xlat1.x;
      x_191 = x_195;
    } else {
      let x_198 : f32 = u_xlat2.x;
      x_191 = x_198;
    }
    let x_199 : f32 = x_191;
    hlslcc_movcTemp.x = x_199;
    let x_202 : bool = u_xlatb3.y;
    if (x_202) {
      let x_207 : f32 = u_xlat1.y;
      x_203 = x_207;
    } else {
      let x_210 : f32 = u_xlat2.y;
      x_203 = x_210;
    }
    let x_211 : f32 = x_203;
    hlslcc_movcTemp.y = x_211;
    let x_214 : bool = u_xlatb3.z;
    if (x_214) {
      let x_219 : f32 = u_xlat1.z;
      x_215 = x_219;
    } else {
      let x_222 : f32 = u_xlat2.z;
      x_215 = x_222;
    }
    let x_223 : f32 = x_215;
    hlslcc_movcTemp.z = x_223;
    let x_225 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_225;
    let x_226 : vec3<f32> = u_xlat1;
    let x_229 : vec4<f32> = x_26.x_UserLut_Params;
    let x_231 : vec3<f32> = (vec3<f32>(x_226.z, x_226.x, x_226.y) * vec3<f32>(x_229.z, x_229.z, x_229.z));
    let x_232 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
    let x_235 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_235);
    let x_238 : vec4<f32> = x_26.x_UserLut_Params;
    let x_242 : vec2<f32> = (vec2<f32>(x_238.x, x_238.y) * vec2<f32>(0.5f, 0.5f));
    let x_243 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_242.x, x_243.y, x_243.z, x_242.y);
    let x_245 : vec4<f32> = u_xlat2;
    let x_248 : vec4<f32> = x_26.x_UserLut_Params;
    let x_251 : vec4<f32> = u_xlat2;
    let x_253 : vec2<f32> = ((vec2<f32>(x_245.y, x_245.z) * vec2<f32>(x_248.x, x_248.y)) + vec2<f32>(x_251.x, x_251.w));
    let x_254 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_254.x, x_253.x, x_253.y, x_254.w);
    let x_256 : f32 = u_xlat15;
    let x_258 : f32 = x_26.x_UserLut_Params.y;
    let x_261 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_256 * x_258) + x_261);
    let x_269 : vec4<f32> = u_xlat2;
    let x_271 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_269.x, x_269.z), 0.0f);
    u_xlat3 = vec3<f32>(x_271.x, x_271.y, x_271.z);
    let x_276 : f32 = x_26.x_UserLut_Params.y;
    u_xlat4.x = x_276;
    u_xlat4.y = 0.0f;
    let x_279 : vec4<f32> = u_xlat2;
    let x_281 : vec2<f32> = u_xlat4;
    let x_282 : vec2<f32> = (vec2<f32>(x_279.x, x_279.z) + x_281);
    let x_283 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_282.x, x_282.y, x_283.z, x_283.w);
    let x_288 : vec4<f32> = u_xlat2;
    let x_290 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_288.x, x_288.y), 0.0f);
    let x_291 : vec3<f32> = vec3<f32>(x_290.x, x_290.y, x_290.z);
    let x_292 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
    let x_295 : f32 = u_xlat1.z;
    let x_297 : f32 = x_26.x_UserLut_Params.z;
    let x_299 : f32 = u_xlat15;
    u_xlat15 = ((x_295 * x_297) + -(x_299));
    let x_302 : vec3<f32> = u_xlat3;
    let x_304 : vec4<f32> = u_xlat2;
    let x_306 : vec3<f32> = (-(x_302) + vec3<f32>(x_304.x, x_304.y, x_304.z));
    let x_307 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
    let x_309 : f32 = u_xlat15;
    let x_311 : vec4<f32> = u_xlat2;
    let x_314 : vec3<f32> = u_xlat3;
    let x_315 : vec3<f32> = ((vec3<f32>(x_309, x_309, x_309) * vec3<f32>(x_311.x, x_311.y, x_311.z)) + x_314);
    let x_316 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
    let x_318 : vec3<f32> = u_xlat1;
    let x_320 : vec4<f32> = u_xlat2;
    let x_322 : vec3<f32> = (-(x_318) + vec3<f32>(x_320.x, x_320.y, x_320.z));
    let x_323 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
    let x_326 : vec4<f32> = x_26.x_UserLut_Params;
    let x_328 : vec4<f32> = u_xlat2;
    let x_331 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_326.w, x_326.w, x_326.w) * vec3<f32>(x_328.x, x_328.y, x_328.z)) + x_331);
    let x_333 : vec3<f32> = u_xlat1;
    let x_336 : vec3<f32> = (x_333 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_337 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
    let x_339 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_339 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_343 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_343 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_347 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_347));
    let x_350 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_350 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_354 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_354);
    let x_359 : vec3<f32> = u_xlat1;
    let x_361 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_359.x, x_359.y, x_359.z, x_359.x));
    u_xlatb1 = vec3<bool>(x_361.x, x_361.y, x_361.z);
    let x_364 : bool = u_xlatb1.x;
    if (x_364) {
      let x_369 : f32 = u_xlat2.x;
      x_365 = x_369;
    } else {
      let x_372 : f32 = u_xlat3.x;
      x_365 = x_372;
    }
    let x_373 : f32 = x_365;
    u_xlat0.x = x_373;
    let x_376 : bool = u_xlatb1.y;
    if (x_376) {
      let x_381 : f32 = u_xlat2.y;
      x_377 = x_381;
    } else {
      let x_384 : f32 = u_xlat3.y;
      x_377 = x_384;
    }
    let x_385 : f32 = x_377;
    u_xlat0.y = x_385;
    let x_388 : bool = u_xlatb1.z;
    if (x_388) {
      let x_393 : f32 = u_xlat2.z;
      x_389 = x_393;
    } else {
      let x_396 : f32 = u_xlat3.z;
      x_389 = x_396;
    }
    let x_397 : f32 = x_389;
    u_xlat0.z = x_397;
  }
  let x_399 : vec4<f32> = u_xlat0;
  let x_402 : vec4<f32> = x_26.x_Lut_Params;
  let x_404 : vec3<f32> = (vec3<f32>(x_399.x, x_399.y, x_399.z) * vec3<f32>(x_402.z, x_402.z, x_402.z));
  let x_405 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_404.x, x_404.y, x_405.z, x_404.z);
  let x_408 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_408);
  let x_411 : vec4<f32> = x_26.x_Lut_Params;
  let x_413 : vec2<f32> = (vec2<f32>(x_411.x, x_411.y) * vec2<f32>(0.5f, 0.5f));
  let x_414 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_413.x, x_413.y, x_414.z);
  let x_416 : vec4<f32> = u_xlat0;
  let x_419 : vec4<f32> = x_26.x_Lut_Params;
  let x_422 : vec3<f32> = u_xlat1;
  let x_424 : vec2<f32> = ((vec2<f32>(x_416.x, x_416.y) * vec2<f32>(x_419.x, x_419.y)) + vec2<f32>(x_422.x, x_422.y));
  let x_425 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_425.x, x_424.x, x_424.y);
  let x_427 : f32 = u_xlat15;
  let x_429 : f32 = x_26.x_Lut_Params.y;
  let x_432 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_427 * x_429) + x_432);
  let x_439 : vec3<f32> = u_xlat1;
  let x_441 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_439.x, x_439.z), 0.0f);
  let x_442 : vec3<f32> = vec3<f32>(x_441.x, x_441.y, x_441.z);
  let x_443 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
  let x_446 : f32 = x_26.x_Lut_Params.y;
  u_xlat0.x = x_446;
  u_xlat0.y = 0.0f;
  let x_449 : vec4<f32> = u_xlat0;
  let x_451 : vec3<f32> = u_xlat1;
  let x_453 : vec2<f32> = (vec2<f32>(x_449.x, x_449.y) + vec2<f32>(x_451.x, x_451.z));
  let x_454 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_453.x, x_453.y, x_454.z, x_454.w);
  let x_459 : vec4<f32> = u_xlat0;
  let x_461 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_459.x, x_459.y), 0.0f);
  u_xlat1 = vec3<f32>(x_461.x, x_461.y, x_461.z);
  let x_464 : f32 = u_xlat0.z;
  let x_466 : f32 = x_26.x_Lut_Params.z;
  let x_468 : f32 = u_xlat15;
  u_xlat0.x = ((x_464 * x_466) + -(x_468));
  let x_473 : vec4<f32> = u_xlat2;
  let x_476 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_473.x, x_473.y, x_473.z)) + x_476);
  let x_478 : vec4<f32> = u_xlat0;
  let x_480 : vec3<f32> = u_xlat5;
  let x_482 : vec4<f32> = u_xlat2;
  let x_484 : vec3<f32> = ((vec3<f32>(x_478.x, x_478.x, x_478.x) * x_480) + vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_485 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_487 : vec2<f32> = vs_TEXCOORD0;
  let x_490 : vec4<f32> = x_26.x_Grain_TilingParams;
  let x_494 : vec4<f32> = x_26.x_Grain_TilingParams;
  let x_496 : vec2<f32> = ((x_487 * vec2<f32>(x_490.x, x_490.y)) + vec2<f32>(x_494.z, x_494.w));
  let x_497 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_496.x, x_496.y, x_497.z);
  let x_504 : vec3<f32> = u_xlat1;
  let x_507 : f32 = x_26.x_GlobalMipBias.x;
  let x_508 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_504.x, x_504.y), x_507);
  u_xlat15 = x_508.w;
  let x_510 : f32 = u_xlat15;
  u_xlat15 = (x_510 + -0.5f);
  let x_513 : f32 = u_xlat15;
  let x_514 : f32 = u_xlat15;
  u_xlat15 = (x_513 + x_514);
  let x_516 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_516.x, x_516.y, x_516.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_525 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_525);
  let x_530 : f32 = x_26.x_Grain_Params.y;
  let x_532 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_530 * -(x_532)) + 1.0f);
  let x_538 : f32 = u_xlat15;
  let x_540 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_538, x_538, x_538) * vec3<f32>(x_540.x, x_540.y, x_540.z));
  let x_543 : vec3<f32> = u_xlat6;
  let x_546 : vec2<f32> = x_26.x_Grain_Params;
  u_xlat6 = (x_543 * vec3<f32>(x_546.x, x_546.x, x_546.x));
  let x_549 : vec3<f32> = u_xlat6;
  let x_550 : vec3<f32> = u_xlat1;
  let x_553 : vec4<f32> = u_xlat0;
  let x_555 : vec3<f32> = ((x_549 * vec3<f32>(x_550.x, x_550.x, x_550.x)) + vec3<f32>(x_553.x, x_553.y, x_553.z));
  let x_556 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_555.x, x_555.y, x_555.z, x_556.w);
  let x_560 : vec4<f32> = u_xlat0;
  let x_562 : vec3<f32> = sqrt(vec3<f32>(x_560.x, x_560.y, x_560.z));
  let x_563 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_562.x, x_562.y, x_562.z, x_563.w);
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

