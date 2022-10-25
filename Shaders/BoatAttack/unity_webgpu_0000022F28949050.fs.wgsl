struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Lut_Params : vec4<f32>,
  x_UserLut_Params : vec4<f32>,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
  x_Dithering_Params : vec4<f32>,
}

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(2) var x_UserLut : texture_2d<f32>;

@group(0) @binding(1) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(3) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(5) var sampler_PointRepeat : sampler;

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
  var u_xlatb0 : vec3<bool>;
  var x_519 : f32;
  var x_531 : f32;
  var x_543 : f32;
  var x_632 : f32;
  var x_644 : f32;
  var x_656 : f32;
  var x_711 : f32;
  var x_723 : f32;
  var x_735 : f32;
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
  let x_487 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_487.x, x_487.y, x_487.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_490 : vec4<f32> = u_xlat0;
  let x_493 : vec3<f32> = log2(abs(vec3<f32>(x_490.x, x_490.y, x_490.z)));
  let x_494 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_496 : vec4<f32> = u_xlat2;
  let x_498 : vec3<f32> = (vec3<f32>(x_496.x, x_496.y, x_496.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_499 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
  let x_501 : vec4<f32> = u_xlat2;
  let x_503 : vec3<f32> = exp2(vec3<f32>(x_501.x, x_501.y, x_501.z));
  let x_504 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  let x_506 : vec4<f32> = u_xlat2;
  let x_509 : vec3<f32> = ((vec3<f32>(x_506.x, x_506.y, x_506.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_510 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
  let x_513 : vec4<f32> = u_xlat0;
  let x_515 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_513.x, x_513.y, x_513.z, x_513.x));
  u_xlatb0 = vec3<bool>(x_515.x, x_515.y, x_515.z);
  let x_518 : bool = u_xlatb0.x;
  if (x_518) {
    let x_523 : f32 = u_xlat1.x;
    x_519 = x_523;
  } else {
    let x_526 : f32 = u_xlat2.x;
    x_519 = x_526;
  }
  let x_527 : f32 = x_519;
  u_xlat0.x = x_527;
  let x_530 : bool = u_xlatb0.y;
  if (x_530) {
    let x_535 : f32 = u_xlat1.y;
    x_531 = x_535;
  } else {
    let x_538 : f32 = u_xlat2.y;
    x_531 = x_538;
  }
  let x_539 : f32 = x_531;
  u_xlat0.y = x_539;
  let x_542 : bool = u_xlatb0.z;
  if (x_542) {
    let x_547 : f32 = u_xlat1.z;
    x_543 = x_547;
  } else {
    let x_550 : f32 = u_xlat2.z;
    x_543 = x_550;
  }
  let x_551 : f32 = x_543;
  u_xlat0.z = x_551;
  let x_553 : vec2<f32> = vs_TEXCOORD0;
  let x_556 : vec4<f32> = x_26.x_Dithering_Params;
  let x_560 : vec4<f32> = x_26.x_Dithering_Params;
  let x_562 : vec2<f32> = ((x_553 * vec2<f32>(x_556.x, x_556.y)) + vec2<f32>(x_560.z, x_560.w));
  let x_563 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_562.x, x_562.y, x_563.z);
  let x_570 : vec3<f32> = u_xlat1;
  let x_573 : f32 = x_26.x_GlobalMipBias.x;
  let x_574 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_570.x, x_570.y), x_573);
  u_xlat15 = x_574.w;
  let x_576 : f32 = u_xlat15;
  u_xlat15 = ((x_576 * 2.0f) + -1.0f);
  let x_581 : f32 = u_xlat15;
  u_xlatb1.x = (x_581 >= 0.0f);
  let x_585 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_585);
  let x_588 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_588)) + 1.0f);
  let x_592 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_592);
  let x_594 : f32 = u_xlat15;
  u_xlat15 = (-(x_594) + 1.0f);
  let x_597 : f32 = u_xlat15;
  let x_599 : f32 = u_xlat1.x;
  u_xlat15 = (x_597 * x_599);
  let x_601 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_601.x, x_601.y, x_601.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_604 : vec4<f32> = u_xlat0;
  let x_607 : vec3<f32> = log2(abs(vec3<f32>(x_604.x, x_604.y, x_604.z)));
  let x_608 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  let x_610 : vec4<f32> = u_xlat2;
  let x_612 : vec3<f32> = (vec3<f32>(x_610.x, x_610.y, x_610.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_613 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_615 : vec4<f32> = u_xlat2;
  let x_617 : vec3<f32> = exp2(vec3<f32>(x_615.x, x_615.y, x_615.z));
  let x_618 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_620 : vec4<f32> = u_xlat2;
  let x_623 : vec3<f32> = ((vec3<f32>(x_620.x, x_620.y, x_620.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_624 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_626 : vec4<f32> = u_xlat0;
  let x_628 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_626.x, x_626.y, x_626.z, x_626.x));
  u_xlatb0 = vec3<bool>(x_628.x, x_628.y, x_628.z);
  let x_631 : bool = u_xlatb0.x;
  if (x_631) {
    let x_636 : f32 = u_xlat1.x;
    x_632 = x_636;
  } else {
    let x_639 : f32 = u_xlat2.x;
    x_632 = x_639;
  }
  let x_640 : f32 = x_632;
  u_xlat0.x = x_640;
  let x_643 : bool = u_xlatb0.y;
  if (x_643) {
    let x_648 : f32 = u_xlat1.y;
    x_644 = x_648;
  } else {
    let x_651 : f32 = u_xlat2.y;
    x_644 = x_651;
  }
  let x_652 : f32 = x_644;
  u_xlat0.y = x_652;
  let x_655 : bool = u_xlatb0.z;
  if (x_655) {
    let x_660 : f32 = u_xlat1.z;
    x_656 = x_660;
  } else {
    let x_663 : f32 = u_xlat2.z;
    x_656 = x_663;
  }
  let x_664 : f32 = x_656;
  u_xlat0.z = x_664;
  let x_666 : f32 = u_xlat15;
  let x_671 : vec4<f32> = u_xlat0;
  let x_673 : vec3<f32> = ((vec3<f32>(x_666, x_666, x_666) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_671.x, x_671.y, x_671.z));
  let x_674 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_676 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_676.x, x_676.y, x_676.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_679 : vec4<f32> = u_xlat0;
  let x_681 : vec3<f32> = (vec3<f32>(x_679.x, x_679.y, x_679.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_682 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_681.x, x_681.y, x_681.z, x_682.w);
  let x_684 : vec4<f32> = u_xlat2;
  let x_686 : vec3<f32> = (vec3<f32>(x_684.x, x_684.y, x_684.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_687 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
  let x_689 : vec4<f32> = u_xlat2;
  let x_692 : vec3<f32> = log2(abs(vec3<f32>(x_689.x, x_689.y, x_689.z)));
  let x_693 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
  let x_695 : vec4<f32> = u_xlat2;
  let x_697 : vec3<f32> = (vec3<f32>(x_695.x, x_695.y, x_695.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_698 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_697.x, x_697.y, x_697.z, x_698.w);
  let x_700 : vec4<f32> = u_xlat2;
  let x_702 : vec3<f32> = exp2(vec3<f32>(x_700.x, x_700.y, x_700.z));
  let x_703 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
  let x_705 : vec4<f32> = u_xlat0;
  let x_707 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_705.x, x_705.y, x_705.z, x_705.x));
  u_xlatb0 = vec3<bool>(x_707.x, x_707.y, x_707.z);
  let x_710 : bool = u_xlatb0.x;
  if (x_710) {
    let x_715 : f32 = u_xlat1.x;
    x_711 = x_715;
  } else {
    let x_718 : f32 = u_xlat2.x;
    x_711 = x_718;
  }
  let x_719 : f32 = x_711;
  u_xlat0.x = x_719;
  let x_722 : bool = u_xlatb0.y;
  if (x_722) {
    let x_727 : f32 = u_xlat1.y;
    x_723 = x_727;
  } else {
    let x_730 : f32 = u_xlat2.y;
    x_723 = x_730;
  }
  let x_731 : f32 = x_723;
  u_xlat0.y = x_731;
  let x_734 : bool = u_xlatb0.z;
  if (x_734) {
    let x_739 : f32 = u_xlat1.z;
    x_735 = x_739;
  } else {
    let x_742 : f32 = u_xlat2.z;
    x_735 = x_742;
  }
  let x_743 : f32 = x_735;
  u_xlat0.z = x_743;
  let x_747 : vec4<f32> = u_xlat0;
  let x_750 : vec3<f32> = max(vec3<f32>(x_747.x, x_747.y, x_747.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_751 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_750.x, x_750.y, x_750.z, x_751.w);
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

