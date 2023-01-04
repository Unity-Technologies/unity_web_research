struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Lut_Params : vec4<f32>,
  x_UserLut_Params : vec4<f32>,
  x_Chroma_Params : f32,
  @size(12)
  padding_1 : u32,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
  x_Grain_Params : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_TilingParams : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_40 : PGlobals;

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
  var u_xlat1 : vec3<f32>;
  var u_xlatb0 : bool;
  var u_xlat5 : vec3<f32>;
  var u_xlatb15 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_253 : f32;
  var x_265 : f32;
  var x_277 : f32;
  var u_xlat15 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlatb1 : vec3<bool>;
  var x_428 : f32;
  var x_440 : f32;
  var x_452 : f32;
  var u_xlat6 : vec3<f32>;
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
  let x_101 : f32 = x_40.x_Vignette_Params2.z;
  u_xlatb0 = (0.0f < x_101);
  let x_103 : bool = u_xlatb0;
  if (x_103) {
    let x_106 : vec2<f32> = vs_TEXCOORD0;
    let x_109 : vec4<f32> = x_40.x_Vignette_Params2;
    let x_112 : vec2<f32> = (x_106 + -(vec2<f32>(x_109.x, x_109.y)));
    let x_113 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_112.x, x_112.y, x_113.z, x_113.w);
    let x_115 : vec4<f32> = u_xlat0;
    let x_119 : vec4<f32> = x_40.x_Vignette_Params2;
    let x_121 : vec2<f32> = (abs(vec2<f32>(x_115.x, x_115.y)) * vec2<f32>(x_119.z, x_119.z));
    let x_122 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_122.x, x_121.x, x_121.y, x_122.w);
    let x_125 : f32 = u_xlat0.y;
    let x_129 : f32 = x_40.x_Vignette_Params1.w;
    u_xlat0.x = (x_125 * x_129);
    let x_132 : vec4<f32> = u_xlat0;
    let x_134 : vec4<f32> = u_xlat0;
    u_xlat0.x = dot(vec2<f32>(x_132.x, x_132.z), vec2<f32>(x_134.x, x_134.z));
    let x_139 : f32 = u_xlat0.x;
    u_xlat0.x = (-(x_139) + 1.0f);
    let x_145 : f32 = u_xlat0.x;
    u_xlat0.x = max(x_145, 0.0f);
    let x_149 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_149);
    let x_153 : f32 = u_xlat0.x;
    let x_155 : f32 = x_40.x_Vignette_Params2.w;
    u_xlat0.x = (x_153 * x_155);
    let x_159 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_159);
    let x_164 : vec4<f32> = x_40.x_Vignette_Params1;
    u_xlat5 = (-(vec3<f32>(x_164.x, x_164.y, x_164.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_169 : vec4<f32> = u_xlat0;
    let x_171 : vec3<f32> = u_xlat5;
    let x_174 : vec4<f32> = x_40.x_Vignette_Params1;
    let x_176 : vec3<f32> = ((vec3<f32>(x_169.x, x_169.x, x_169.x) * x_171) + vec3<f32>(x_174.x, x_174.y, x_174.z));
    let x_177 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
    let x_179 : vec4<f32> = u_xlat0;
    let x_181 : vec3<f32> = u_xlat1;
    u_xlat1 = (vec3<f32>(x_179.x, x_179.y, x_179.z) * x_181);
  }
  let x_183 : vec3<f32> = u_xlat1;
  let x_186 : vec4<f32> = x_40.x_Lut_Params;
  let x_188 : vec3<f32> = (x_183 * vec3<f32>(x_186.w, x_186.w, x_186.w));
  let x_189 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  let x_191 : vec4<f32> = u_xlat0;
  let x_195 : vec3<f32> = clamp(vec3<f32>(x_191.x, x_191.y, x_191.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_196 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_201 : f32 = x_40.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_201);
  let x_203 : bool = u_xlatb15;
  if (x_203) {
    let x_206 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_206.x, x_206.y, x_206.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_212 : vec4<f32> = u_xlat0;
    let x_214 : vec3<f32> = log2(vec3<f32>(x_212.x, x_212.y, x_212.z));
    let x_215 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
    let x_217 : vec4<f32> = u_xlat2;
    let x_221 : vec3<f32> = (vec3<f32>(x_217.x, x_217.y, x_217.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_222 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
    let x_224 : vec4<f32> = u_xlat2;
    let x_226 : vec3<f32> = exp2(vec3<f32>(x_224.x, x_224.y, x_224.z));
    let x_227 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
    let x_229 : vec4<f32> = u_xlat2;
    let x_236 : vec3<f32> = ((vec3<f32>(x_229.x, x_229.y, x_229.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_237 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
    let x_244 : vec4<f32> = u_xlat0;
    let x_247 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_244.x, x_244.y, x_244.z, x_244.x));
    u_xlatb3 = vec3<bool>(x_247.x, x_247.y, x_247.z);
    let x_250 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_250;
    let x_252 : bool = u_xlatb3.x;
    if (x_252) {
      let x_257 : f32 = u_xlat1.x;
      x_253 = x_257;
    } else {
      let x_260 : f32 = u_xlat2.x;
      x_253 = x_260;
    }
    let x_261 : f32 = x_253;
    hlslcc_movcTemp.x = x_261;
    let x_264 : bool = u_xlatb3.y;
    if (x_264) {
      let x_269 : f32 = u_xlat1.y;
      x_265 = x_269;
    } else {
      let x_272 : f32 = u_xlat2.y;
      x_265 = x_272;
    }
    let x_273 : f32 = x_265;
    hlslcc_movcTemp.y = x_273;
    let x_276 : bool = u_xlatb3.z;
    if (x_276) {
      let x_281 : f32 = u_xlat1.z;
      x_277 = x_281;
    } else {
      let x_284 : f32 = u_xlat2.z;
      x_277 = x_284;
    }
    let x_285 : f32 = x_277;
    hlslcc_movcTemp.z = x_285;
    let x_287 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_287;
    let x_288 : vec3<f32> = u_xlat1;
    let x_291 : vec4<f32> = x_40.x_UserLut_Params;
    let x_293 : vec3<f32> = (vec3<f32>(x_288.z, x_288.x, x_288.y) * vec3<f32>(x_291.z, x_291.z, x_291.z));
    let x_294 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
    let x_298 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_298);
    let x_301 : vec4<f32> = x_40.x_UserLut_Params;
    let x_305 : vec2<f32> = (vec2<f32>(x_301.x, x_301.y) * vec2<f32>(0.5f, 0.5f));
    let x_306 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_305.x, x_306.y, x_306.z, x_305.y);
    let x_308 : vec4<f32> = u_xlat2;
    let x_311 : vec4<f32> = x_40.x_UserLut_Params;
    let x_314 : vec4<f32> = u_xlat2;
    let x_316 : vec2<f32> = ((vec2<f32>(x_308.y, x_308.z) * vec2<f32>(x_311.x, x_311.y)) + vec2<f32>(x_314.x, x_314.w));
    let x_317 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_317.x, x_316.x, x_316.y, x_317.w);
    let x_319 : f32 = u_xlat15;
    let x_321 : f32 = x_40.x_UserLut_Params.y;
    let x_324 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_319 * x_321) + x_324);
    let x_332 : vec4<f32> = u_xlat2;
    let x_334 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_332.x, x_332.z), 0.0f);
    u_xlat3 = vec3<f32>(x_334.x, x_334.y, x_334.z);
    let x_339 : f32 = x_40.x_UserLut_Params.y;
    u_xlat4.x = x_339;
    u_xlat4.y = 0.0f;
    let x_342 : vec4<f32> = u_xlat2;
    let x_344 : vec2<f32> = u_xlat4;
    let x_345 : vec2<f32> = (vec2<f32>(x_342.x, x_342.z) + x_344);
    let x_346 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_345.x, x_345.y, x_346.z, x_346.w);
    let x_351 : vec4<f32> = u_xlat2;
    let x_353 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_351.x, x_351.y), 0.0f);
    let x_354 : vec3<f32> = vec3<f32>(x_353.x, x_353.y, x_353.z);
    let x_355 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
    let x_358 : f32 = u_xlat1.z;
    let x_360 : f32 = x_40.x_UserLut_Params.z;
    let x_362 : f32 = u_xlat15;
    u_xlat15 = ((x_358 * x_360) + -(x_362));
    let x_365 : vec3<f32> = u_xlat3;
    let x_367 : vec4<f32> = u_xlat2;
    let x_369 : vec3<f32> = (-(x_365) + vec3<f32>(x_367.x, x_367.y, x_367.z));
    let x_370 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
    let x_372 : f32 = u_xlat15;
    let x_374 : vec4<f32> = u_xlat2;
    let x_377 : vec3<f32> = u_xlat3;
    let x_378 : vec3<f32> = ((vec3<f32>(x_372, x_372, x_372) * vec3<f32>(x_374.x, x_374.y, x_374.z)) + x_377);
    let x_379 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
    let x_381 : vec3<f32> = u_xlat1;
    let x_383 : vec4<f32> = u_xlat2;
    let x_385 : vec3<f32> = (-(x_381) + vec3<f32>(x_383.x, x_383.y, x_383.z));
    let x_386 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
    let x_389 : vec4<f32> = x_40.x_UserLut_Params;
    let x_391 : vec4<f32> = u_xlat2;
    let x_394 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_389.w, x_389.w, x_389.w) * vec3<f32>(x_391.x, x_391.y, x_391.z)) + x_394);
    let x_396 : vec3<f32> = u_xlat1;
    let x_399 : vec3<f32> = (x_396 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_400 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_399.x, x_399.y, x_399.z, x_400.w);
    let x_402 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_402 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_406 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_406 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_410 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_410));
    let x_413 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_413 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_417 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_417);
    let x_422 : vec3<f32> = u_xlat1;
    let x_424 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_422.x, x_422.y, x_422.z, x_422.x));
    u_xlatb1 = vec3<bool>(x_424.x, x_424.y, x_424.z);
    let x_427 : bool = u_xlatb1.x;
    if (x_427) {
      let x_432 : f32 = u_xlat2.x;
      x_428 = x_432;
    } else {
      let x_435 : f32 = u_xlat3.x;
      x_428 = x_435;
    }
    let x_436 : f32 = x_428;
    u_xlat0.x = x_436;
    let x_439 : bool = u_xlatb1.y;
    if (x_439) {
      let x_444 : f32 = u_xlat2.y;
      x_440 = x_444;
    } else {
      let x_447 : f32 = u_xlat3.y;
      x_440 = x_447;
    }
    let x_448 : f32 = x_440;
    u_xlat0.y = x_448;
    let x_451 : bool = u_xlatb1.z;
    if (x_451) {
      let x_456 : f32 = u_xlat2.z;
      x_452 = x_456;
    } else {
      let x_459 : f32 = u_xlat3.z;
      x_452 = x_459;
    }
    let x_460 : f32 = x_452;
    u_xlat0.z = x_460;
  }
  let x_462 : vec4<f32> = u_xlat0;
  let x_465 : vec4<f32> = x_40.x_Lut_Params;
  let x_467 : vec3<f32> = (vec3<f32>(x_462.x, x_462.y, x_462.z) * vec3<f32>(x_465.z, x_465.z, x_465.z));
  let x_468 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_467.x, x_467.y, x_468.z, x_467.z);
  let x_471 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_471);
  let x_474 : vec4<f32> = x_40.x_Lut_Params;
  let x_476 : vec2<f32> = (vec2<f32>(x_474.x, x_474.y) * vec2<f32>(0.5f, 0.5f));
  let x_477 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_476.x, x_476.y, x_477.z);
  let x_479 : vec4<f32> = u_xlat0;
  let x_482 : vec4<f32> = x_40.x_Lut_Params;
  let x_485 : vec3<f32> = u_xlat1;
  let x_487 : vec2<f32> = ((vec2<f32>(x_479.x, x_479.y) * vec2<f32>(x_482.x, x_482.y)) + vec2<f32>(x_485.x, x_485.y));
  let x_488 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_488.x, x_487.x, x_487.y);
  let x_490 : f32 = u_xlat15;
  let x_492 : f32 = x_40.x_Lut_Params.y;
  let x_495 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_490 * x_492) + x_495);
  let x_502 : vec3<f32> = u_xlat1;
  let x_504 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_502.x, x_502.z), 0.0f);
  let x_505 : vec3<f32> = vec3<f32>(x_504.x, x_504.y, x_504.z);
  let x_506 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
  let x_509 : f32 = x_40.x_Lut_Params.y;
  u_xlat0.x = x_509;
  u_xlat0.y = 0.0f;
  let x_512 : vec4<f32> = u_xlat0;
  let x_514 : vec3<f32> = u_xlat1;
  let x_516 : vec2<f32> = (vec2<f32>(x_512.x, x_512.y) + vec2<f32>(x_514.x, x_514.z));
  let x_517 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_516.x, x_516.y, x_517.z, x_517.w);
  let x_522 : vec4<f32> = u_xlat0;
  let x_524 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_522.x, x_522.y), 0.0f);
  u_xlat1 = vec3<f32>(x_524.x, x_524.y, x_524.z);
  let x_527 : f32 = u_xlat0.z;
  let x_529 : f32 = x_40.x_Lut_Params.z;
  let x_531 : f32 = u_xlat15;
  u_xlat0.x = ((x_527 * x_529) + -(x_531));
  let x_535 : vec4<f32> = u_xlat2;
  let x_538 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_535.x, x_535.y, x_535.z)) + x_538);
  let x_540 : vec4<f32> = u_xlat0;
  let x_542 : vec3<f32> = u_xlat5;
  let x_544 : vec4<f32> = u_xlat2;
  let x_546 : vec3<f32> = ((vec3<f32>(x_540.x, x_540.x, x_540.x) * x_542) + vec3<f32>(x_544.x, x_544.y, x_544.z));
  let x_547 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
  let x_549 : vec2<f32> = vs_TEXCOORD0;
  let x_552 : vec4<f32> = x_40.x_Grain_TilingParams;
  let x_556 : vec4<f32> = x_40.x_Grain_TilingParams;
  let x_558 : vec2<f32> = ((x_549 * vec2<f32>(x_552.x, x_552.y)) + vec2<f32>(x_556.z, x_556.w));
  let x_559 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_558.x, x_558.y, x_559.z);
  let x_566 : vec3<f32> = u_xlat1;
  let x_569 : f32 = x_40.x_GlobalMipBias.x;
  let x_570 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_566.x, x_566.y), x_569);
  u_xlat15 = x_570.w;
  let x_572 : f32 = u_xlat15;
  u_xlat15 = (x_572 + -0.5f);
  let x_575 : f32 = u_xlat15;
  let x_576 : f32 = u_xlat15;
  u_xlat15 = (x_575 + x_576);
  let x_578 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_578.x, x_578.y, x_578.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_587 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_587);
  let x_592 : f32 = x_40.x_Grain_Params.y;
  let x_594 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_592 * -(x_594)) + 1.0f);
  let x_600 : f32 = u_xlat15;
  let x_602 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_600, x_600, x_600) * vec3<f32>(x_602.x, x_602.y, x_602.z));
  let x_605 : vec3<f32> = u_xlat6;
  let x_608 : vec2<f32> = x_40.x_Grain_Params;
  u_xlat6 = (x_605 * vec3<f32>(x_608.x, x_608.x, x_608.x));
  let x_611 : vec3<f32> = u_xlat6;
  let x_612 : vec3<f32> = u_xlat1;
  let x_615 : vec4<f32> = u_xlat0;
  let x_617 : vec3<f32> = ((x_611 * vec3<f32>(x_612.x, x_612.x, x_612.x)) + vec3<f32>(x_615.x, x_615.y, x_615.z));
  let x_618 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_622 : vec4<f32> = u_xlat0;
  let x_624 : vec3<f32> = sqrt(vec3<f32>(x_622.x, x_622.y, x_622.z));
  let x_625 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
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

