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
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
}

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb15 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat10 : vec2<f32>;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_348 : f32;
  var x_360 : f32;
  var x_372 : f32;
  var u_xlat4 : vec2<f32>;
  var u_xlatb1 : vec3<bool>;
  var x_524 : f32;
  var x_536 : f32;
  var x_548 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_592 : f32;
  var x_605 : f32;
  var x_617 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_23, x_34);
  u_xlat0 = vec3<f32>(x_35.x, x_35.y, x_35.z);
  let x_43 : vec2<f32> = vs_TEXCOORD0;
  let x_45 : f32 = x_27.x_GlobalMipBias.x;
  let x_46 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, x_43, x_45);
  u_xlat1 = x_46;
  let x_53 : f32 = x_27.x_Bloom_RGBM;
  u_xlatb15 = (0.0f < x_53);
  let x_55 : bool = u_xlatb15;
  if (x_55) {
    let x_59 : vec4<f32> = u_xlat1;
    let x_61 : vec4<f32> = u_xlat1;
    let x_63 : vec3<f32> = (vec3<f32>(x_59.w, x_59.w, x_59.w) * vec3<f32>(x_61.x, x_61.y, x_61.z));
    let x_64 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_63.x, x_63.y, x_63.z, x_64.w);
    let x_66 : vec4<f32> = u_xlat2;
    let x_70 : vec3<f32> = (vec3<f32>(x_66.x, x_66.y, x_66.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_71 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_70.x, x_70.y, x_70.z, x_71.w);
  }
  let x_73 : vec4<f32> = u_xlat1;
  let x_78 : vec4<f32> = x_27.x_Bloom_Params;
  let x_80 : vec3<f32> = (vec3<f32>(x_73.x, x_73.y, x_73.z) * vec3<f32>(x_78.x, x_78.x, x_78.x));
  let x_81 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_80.x, x_80.y, x_80.z, x_81.w);
  let x_83 : vec4<f32> = u_xlat1;
  let x_86 : vec4<f32> = x_27.x_Bloom_Params;
  let x_89 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_83.x, x_83.y, x_83.z) * vec3<f32>(x_86.y, x_86.z, x_86.w)) + x_89);
  let x_94 : f32 = x_27.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_94);
  let x_96 : bool = u_xlatb15;
  if (x_96) {
    let x_99 : vec2<f32> = vs_TEXCOORD0;
    let x_101 : vec4<f32> = x_27.x_Vignette_Params2;
    let x_104 : vec2<f32> = (x_99 + -(vec2<f32>(x_101.x, x_101.y)));
    let x_105 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_104.x, x_104.y, x_105.z, x_105.w);
    let x_107 : vec4<f32> = u_xlat1;
    let x_111 : vec4<f32> = x_27.x_Vignette_Params2;
    let x_113 : vec2<f32> = (abs(vec2<f32>(x_107.x, x_107.y)) * vec2<f32>(x_111.z, x_111.z));
    let x_114 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_114.x, x_113.x, x_113.y, x_114.w);
    let x_119 : f32 = u_xlat1.y;
    let x_123 : f32 = x_27.x_Vignette_Params1.w;
    u_xlat1.x = (x_119 * x_123);
    let x_127 : vec4<f32> = u_xlat1;
    let x_129 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_127.x, x_127.z), vec2<f32>(x_129.x, x_129.z));
    let x_132 : f32 = u_xlat15;
    u_xlat15 = (-(x_132) + 1.0f);
    let x_136 : f32 = u_xlat15;
    u_xlat15 = max(x_136, 0.0f);
    let x_138 : f32 = u_xlat15;
    u_xlat15 = log2(x_138);
    let x_140 : f32 = u_xlat15;
    let x_142 : f32 = x_27.x_Vignette_Params2.w;
    u_xlat15 = (x_140 * x_142);
    let x_144 : f32 = u_xlat15;
    u_xlat15 = exp2(x_144);
    let x_147 : vec4<f32> = x_27.x_Vignette_Params1;
    let x_151 : vec3<f32> = (-(vec3<f32>(x_147.x, x_147.y, x_147.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_152 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
    let x_154 : f32 = u_xlat15;
    let x_156 : vec4<f32> = u_xlat1;
    let x_160 : vec4<f32> = x_27.x_Vignette_Params1;
    let x_162 : vec3<f32> = ((vec3<f32>(x_154, x_154, x_154) * vec3<f32>(x_156.x, x_156.y, x_156.z)) + vec3<f32>(x_160.x, x_160.y, x_160.z));
    let x_163 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
    let x_165 : vec3<f32> = u_xlat0;
    let x_166 : vec4<f32> = u_xlat1;
    u_xlat0 = (x_165 * vec3<f32>(x_166.x, x_166.y, x_166.z));
  }
  let x_169 : vec3<f32> = u_xlat0;
  let x_173 : vec4<f32> = x_27.x_Lut_Params;
  u_xlat0 = (vec3<f32>(x_169.z, x_169.x, x_169.y) * vec3<f32>(x_173.w, x_173.w, x_173.w));
  let x_176 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_176 * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_183 : vec3<f32> = u_xlat0;
  u_xlat0 = max(x_183, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_186 : vec3<f32> = u_xlat0;
  u_xlat0 = log2(x_186);
  let x_188 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_188 * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_195 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_195, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_200 : vec3<f32> = u_xlat0;
  let x_202 : vec4<f32> = x_27.x_Lut_Params;
  u_xlat5 = (x_200 * vec3<f32>(x_202.z, x_202.z, x_202.z));
  let x_206 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_206);
  let x_210 : vec4<f32> = x_27.x_Lut_Params;
  let x_214 : vec2<f32> = (vec2<f32>(x_210.x, x_210.y) * vec2<f32>(0.5f, 0.5f));
  let x_215 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_214.x, x_214.y, x_215.z, x_215.w);
  let x_217 : vec3<f32> = u_xlat5;
  let x_220 : vec4<f32> = x_27.x_Lut_Params;
  let x_223 : vec4<f32> = u_xlat1;
  let x_225 : vec2<f32> = ((vec2<f32>(x_217.y, x_217.z) * vec2<f32>(x_220.x, x_220.y)) + vec2<f32>(x_223.x, x_223.y));
  let x_226 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_226.x, x_225.x, x_225.y, x_226.w);
  let x_229 : f32 = u_xlat5.x;
  let x_231 : f32 = x_27.x_Lut_Params.y;
  let x_234 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_229 * x_231) + x_234);
  let x_241 : vec4<f32> = u_xlat1;
  let x_243 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_241.x, x_241.z), 0.0f);
  let x_244 : vec3<f32> = vec3<f32>(x_243.x, x_243.y, x_243.z);
  let x_245 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_249 : f32 = x_27.x_Lut_Params.y;
  u_xlat3.x = x_249;
  u_xlat3.y = 0.0f;
  let x_254 : vec4<f32> = u_xlat1;
  let x_256 : vec3<f32> = u_xlat3;
  u_xlat10 = (vec2<f32>(x_254.x, x_254.z) + vec2<f32>(x_256.x, x_256.y));
  let x_262 : vec2<f32> = u_xlat10;
  let x_263 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, x_262, 0.0f);
  let x_264 : vec3<f32> = vec3<f32>(x_263.x, x_263.y, x_263.z);
  let x_265 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_268 : f32 = u_xlat0.x;
  let x_270 : f32 = x_27.x_Lut_Params.z;
  let x_273 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_268 * x_270) + -(x_273));
  let x_277 : vec4<f32> = u_xlat2;
  let x_280 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_277.x, x_277.y, x_277.z)) + vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_283 : vec3<f32> = u_xlat0;
  let x_285 : vec3<f32> = u_xlat5;
  let x_287 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_283.x, x_283.x, x_283.x) * x_285) + vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_292 : f32 = x_27.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_292);
  let x_294 : bool = u_xlatb15;
  if (x_294) {
    let x_297 : vec3<f32> = u_xlat0;
    u_xlat0 = x_297;
    let x_298 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_298, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_302 : vec3<f32> = u_xlat0;
    let x_305 : vec3<f32> = (x_302 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_306 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
    let x_308 : vec3<f32> = u_xlat0;
    let x_309 : vec3<f32> = log2(x_308);
    let x_310 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
    let x_312 : vec4<f32> = u_xlat2;
    let x_316 : vec3<f32> = (vec3<f32>(x_312.x, x_312.y, x_312.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_317 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
    let x_319 : vec4<f32> = u_xlat2;
    let x_321 : vec3<f32> = exp2(vec3<f32>(x_319.x, x_319.y, x_319.z));
    let x_322 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
    let x_324 : vec4<f32> = u_xlat2;
    let x_331 : vec3<f32> = ((vec3<f32>(x_324.x, x_324.y, x_324.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_332 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
    let x_339 : vec3<f32> = u_xlat0;
    let x_342 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_339.x, x_339.y, x_339.z, x_339.x));
    u_xlatb3 = vec3<bool>(x_342.x, x_342.y, x_342.z);
    let x_345 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_345;
    let x_347 : bool = u_xlatb3.x;
    if (x_347) {
      let x_352 : f32 = u_xlat1.x;
      x_348 = x_352;
    } else {
      let x_355 : f32 = u_xlat2.x;
      x_348 = x_355;
    }
    let x_356 : f32 = x_348;
    hlslcc_movcTemp.x = x_356;
    let x_359 : bool = u_xlatb3.y;
    if (x_359) {
      let x_364 : f32 = u_xlat1.y;
      x_360 = x_364;
    } else {
      let x_367 : f32 = u_xlat2.y;
      x_360 = x_367;
    }
    let x_368 : f32 = x_360;
    hlslcc_movcTemp.y = x_368;
    let x_371 : bool = u_xlatb3.z;
    if (x_371) {
      let x_376 : f32 = u_xlat1.z;
      x_372 = x_376;
    } else {
      let x_379 : f32 = u_xlat2.z;
      x_372 = x_379;
    }
    let x_380 : f32 = x_372;
    hlslcc_movcTemp.z = x_380;
    let x_382 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_382;
    let x_383 : vec4<f32> = u_xlat1;
    let x_386 : vec4<f32> = x_27.x_UserLut_Params;
    let x_388 : vec3<f32> = (vec3<f32>(x_383.z, x_383.x, x_383.y) * vec3<f32>(x_386.z, x_386.z, x_386.z));
    let x_389 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
    let x_392 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_392);
    let x_395 : vec4<f32> = x_27.x_UserLut_Params;
    let x_397 : vec2<f32> = (vec2<f32>(x_395.x, x_395.y) * vec2<f32>(0.5f, 0.5f));
    let x_398 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_397.x, x_398.y, x_398.z, x_397.y);
    let x_400 : vec4<f32> = u_xlat2;
    let x_403 : vec4<f32> = x_27.x_UserLut_Params;
    let x_406 : vec4<f32> = u_xlat2;
    let x_408 : vec2<f32> = ((vec2<f32>(x_400.y, x_400.z) * vec2<f32>(x_403.x, x_403.y)) + vec2<f32>(x_406.x, x_406.w));
    let x_409 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_409.x, x_408.x, x_408.y, x_409.w);
    let x_411 : f32 = u_xlat15;
    let x_413 : f32 = x_27.x_UserLut_Params.y;
    let x_416 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_411 * x_413) + x_416);
    let x_423 : vec4<f32> = u_xlat2;
    let x_425 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_423.x, x_423.z), 0.0f);
    u_xlat3 = vec3<f32>(x_425.x, x_425.y, x_425.z);
    let x_429 : f32 = x_27.x_UserLut_Params.y;
    u_xlat4.x = x_429;
    u_xlat4.y = 0.0f;
    let x_432 : vec4<f32> = u_xlat2;
    let x_434 : vec2<f32> = u_xlat4;
    let x_435 : vec2<f32> = (vec2<f32>(x_432.x, x_432.z) + x_434);
    let x_436 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_435.x, x_435.y, x_436.z, x_436.w);
    let x_441 : vec4<f32> = u_xlat2;
    let x_443 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_441.x, x_441.y), 0.0f);
    let x_444 : vec3<f32> = vec3<f32>(x_443.x, x_443.y, x_443.z);
    let x_445 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
    let x_448 : f32 = u_xlat1.z;
    let x_450 : f32 = x_27.x_UserLut_Params.z;
    let x_452 : f32 = u_xlat15;
    u_xlat15 = ((x_448 * x_450) + -(x_452));
    let x_455 : vec3<f32> = u_xlat3;
    let x_457 : vec4<f32> = u_xlat2;
    let x_459 : vec3<f32> = (-(x_455) + vec3<f32>(x_457.x, x_457.y, x_457.z));
    let x_460 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
    let x_462 : f32 = u_xlat15;
    let x_464 : vec4<f32> = u_xlat2;
    let x_467 : vec3<f32> = u_xlat3;
    let x_468 : vec3<f32> = ((vec3<f32>(x_462, x_462, x_462) * vec3<f32>(x_464.x, x_464.y, x_464.z)) + x_467);
    let x_469 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
    let x_471 : vec4<f32> = u_xlat1;
    let x_474 : vec4<f32> = u_xlat2;
    let x_476 : vec3<f32> = (-(vec3<f32>(x_471.x, x_471.y, x_471.z)) + vec3<f32>(x_474.x, x_474.y, x_474.z));
    let x_477 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
    let x_480 : vec4<f32> = x_27.x_UserLut_Params;
    let x_482 : vec4<f32> = u_xlat2;
    let x_485 : vec4<f32> = u_xlat1;
    let x_487 : vec3<f32> = ((vec3<f32>(x_480.w, x_480.w, x_480.w) * vec3<f32>(x_482.x, x_482.y, x_482.z)) + vec3<f32>(x_485.x, x_485.y, x_485.z));
    let x_488 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
    let x_490 : vec4<f32> = u_xlat1;
    let x_494 : vec3<f32> = (vec3<f32>(x_490.x, x_490.y, x_490.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_495 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
    let x_497 : vec4<f32> = u_xlat1;
    u_xlat3 = (vec3<f32>(x_497.x, x_497.y, x_497.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_502 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_502 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_506 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_506));
    let x_509 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_509 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_513 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_513);
    let x_518 : vec4<f32> = u_xlat1;
    let x_520 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_518.x, x_518.y, x_518.z, x_518.x));
    u_xlatb1 = vec3<bool>(x_520.x, x_520.y, x_520.z);
    let x_523 : bool = u_xlatb1.x;
    if (x_523) {
      let x_528 : f32 = u_xlat2.x;
      x_524 = x_528;
    } else {
      let x_531 : f32 = u_xlat3.x;
      x_524 = x_531;
    }
    let x_532 : f32 = x_524;
    u_xlat0.x = x_532;
    let x_535 : bool = u_xlatb1.y;
    if (x_535) {
      let x_540 : f32 = u_xlat2.y;
      x_536 = x_540;
    } else {
      let x_543 : f32 = u_xlat3.y;
      x_536 = x_543;
    }
    let x_544 : f32 = x_536;
    u_xlat0.y = x_544;
    let x_547 : bool = u_xlatb1.z;
    if (x_547) {
      let x_552 : f32 = u_xlat2.z;
      x_548 = x_552;
    } else {
      let x_555 : f32 = u_xlat3.z;
      x_548 = x_555;
    }
    let x_556 : f32 = x_548;
    u_xlat0.z = x_556;
  }
  let x_558 : vec3<f32> = u_xlat0;
  let x_559 : vec3<f32> = (x_558 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_560 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
  let x_562 : vec3<f32> = u_xlat0;
  let x_564 : vec3<f32> = log2(abs(x_562));
  let x_565 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
  let x_567 : vec4<f32> = u_xlat2;
  let x_569 : vec3<f32> = (vec3<f32>(x_567.x, x_567.y, x_567.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_570 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_572 : vec4<f32> = u_xlat2;
  let x_574 : vec3<f32> = exp2(vec3<f32>(x_572.x, x_572.y, x_572.z));
  let x_575 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
  let x_577 : vec4<f32> = u_xlat2;
  let x_580 : vec3<f32> = ((vec3<f32>(x_577.x, x_577.y, x_577.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_581 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_584 : vec3<f32> = u_xlat0;
  let x_586 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_584.x, x_584.y, x_584.z, x_584.x));
  u_xlatb0 = vec3<bool>(x_586.x, x_586.y, x_586.z);
  let x_591 : bool = u_xlatb0.x;
  if (x_591) {
    let x_596 : f32 = u_xlat1.x;
    x_592 = x_596;
  } else {
    let x_599 : f32 = u_xlat2.x;
    x_592 = x_599;
  }
  let x_600 : f32 = x_592;
  SV_Target0.x = x_600;
  let x_604 : bool = u_xlatb0.y;
  if (x_604) {
    let x_609 : f32 = u_xlat1.y;
    x_605 = x_609;
  } else {
    let x_612 : f32 = u_xlat2.y;
    x_605 = x_612;
  }
  let x_613 : f32 = x_605;
  SV_Target0.y = x_613;
  let x_616 : bool = u_xlatb0.z;
  if (x_616) {
    let x_621 : f32 = u_xlat1.z;
    x_617 = x_621;
  } else {
    let x_624 : f32 = u_xlat2.z;
    x_617 = x_624;
  }
  let x_625 : f32 = x_617;
  SV_Target0.z = x_625;
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

