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
  x_Dithering_Params : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_40 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(1) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_LinearRepeat : sampler;

@group(0) @binding(4) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var u_xlat5 : vec3<f32>;
  var u_xlatb15 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_255 : f32;
  var x_267 : f32;
  var x_279 : f32;
  var u_xlat15 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlatb1 : vec3<bool>;
  var x_430 : f32;
  var x_442 : f32;
  var x_454 : f32;
  var u_xlat6 : vec3<f32>;
  var x_699 : f32;
  var x_711 : f32;
  var x_723 : f32;
  var x_778 : f32;
  var x_790 : f32;
  var x_802 : f32;
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
  let x_102 : f32 = x_40.x_Vignette_Params2.z;
  u_xlatb0.x = (0.0f < x_102);
  let x_107 : bool = u_xlatb0.x;
  if (x_107) {
    let x_110 : vec2<f32> = vs_TEXCOORD0;
    let x_113 : vec4<f32> = x_40.x_Vignette_Params2;
    let x_116 : vec2<f32> = (x_110 + -(vec2<f32>(x_113.x, x_113.y)));
    let x_117 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_116.x, x_116.y, x_117.z, x_117.w);
    let x_119 : vec4<f32> = u_xlat0;
    let x_123 : vec4<f32> = x_40.x_Vignette_Params2;
    let x_125 : vec2<f32> = (abs(vec2<f32>(x_119.x, x_119.y)) * vec2<f32>(x_123.z, x_123.z));
    let x_126 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_126.x, x_125.x, x_125.y, x_126.w);
    let x_129 : f32 = u_xlat0.y;
    let x_133 : f32 = x_40.x_Vignette_Params1.w;
    u_xlat0.x = (x_129 * x_133);
    let x_136 : vec4<f32> = u_xlat0;
    let x_138 : vec4<f32> = u_xlat0;
    u_xlat0.x = dot(vec2<f32>(x_136.x, x_136.z), vec2<f32>(x_138.x, x_138.z));
    let x_143 : f32 = u_xlat0.x;
    u_xlat0.x = (-(x_143) + 1.0f);
    let x_149 : f32 = u_xlat0.x;
    u_xlat0.x = max(x_149, 0.0f);
    let x_153 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_153);
    let x_157 : f32 = u_xlat0.x;
    let x_159 : f32 = x_40.x_Vignette_Params2.w;
    u_xlat0.x = (x_157 * x_159);
    let x_163 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_163);
    let x_168 : vec4<f32> = x_40.x_Vignette_Params1;
    u_xlat5 = (-(vec3<f32>(x_168.x, x_168.y, x_168.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_173 : vec4<f32> = u_xlat0;
    let x_175 : vec3<f32> = u_xlat5;
    let x_178 : vec4<f32> = x_40.x_Vignette_Params1;
    let x_180 : vec3<f32> = ((vec3<f32>(x_173.x, x_173.x, x_173.x) * x_175) + vec3<f32>(x_178.x, x_178.y, x_178.z));
    let x_181 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
    let x_183 : vec4<f32> = u_xlat0;
    let x_185 : vec3<f32> = u_xlat1;
    u_xlat1 = (vec3<f32>(x_183.x, x_183.y, x_183.z) * x_185);
  }
  let x_187 : vec3<f32> = u_xlat1;
  let x_190 : vec4<f32> = x_40.x_Lut_Params;
  let x_192 : vec3<f32> = (x_187 * vec3<f32>(x_190.w, x_190.w, x_190.w));
  let x_193 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_195 : vec4<f32> = u_xlat0;
  let x_199 : vec3<f32> = clamp(vec3<f32>(x_195.x, x_195.y, x_195.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_200 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  let x_205 : f32 = x_40.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_205);
  let x_207 : bool = u_xlatb15;
  if (x_207) {
    let x_210 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_210.x, x_210.y, x_210.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_216 : vec4<f32> = u_xlat0;
    let x_218 : vec3<f32> = log2(vec3<f32>(x_216.x, x_216.y, x_216.z));
    let x_219 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
    let x_221 : vec4<f32> = u_xlat2;
    let x_225 : vec3<f32> = (vec3<f32>(x_221.x, x_221.y, x_221.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_226 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
    let x_228 : vec4<f32> = u_xlat2;
    let x_230 : vec3<f32> = exp2(vec3<f32>(x_228.x, x_228.y, x_228.z));
    let x_231 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
    let x_233 : vec4<f32> = u_xlat2;
    let x_240 : vec3<f32> = ((vec3<f32>(x_233.x, x_233.y, x_233.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_241 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
    let x_246 : vec4<f32> = u_xlat0;
    let x_249 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_246.x, x_246.y, x_246.z, x_246.x));
    u_xlatb3 = vec3<bool>(x_249.x, x_249.y, x_249.z);
    let x_252 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_252;
    let x_254 : bool = u_xlatb3.x;
    if (x_254) {
      let x_259 : f32 = u_xlat1.x;
      x_255 = x_259;
    } else {
      let x_262 : f32 = u_xlat2.x;
      x_255 = x_262;
    }
    let x_263 : f32 = x_255;
    hlslcc_movcTemp.x = x_263;
    let x_266 : bool = u_xlatb3.y;
    if (x_266) {
      let x_271 : f32 = u_xlat1.y;
      x_267 = x_271;
    } else {
      let x_274 : f32 = u_xlat2.y;
      x_267 = x_274;
    }
    let x_275 : f32 = x_267;
    hlslcc_movcTemp.y = x_275;
    let x_278 : bool = u_xlatb3.z;
    if (x_278) {
      let x_283 : f32 = u_xlat1.z;
      x_279 = x_283;
    } else {
      let x_286 : f32 = u_xlat2.z;
      x_279 = x_286;
    }
    let x_287 : f32 = x_279;
    hlslcc_movcTemp.z = x_287;
    let x_289 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_289;
    let x_290 : vec3<f32> = u_xlat1;
    let x_293 : vec4<f32> = x_40.x_UserLut_Params;
    let x_295 : vec3<f32> = (vec3<f32>(x_290.z, x_290.x, x_290.y) * vec3<f32>(x_293.z, x_293.z, x_293.z));
    let x_296 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
    let x_300 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_300);
    let x_303 : vec4<f32> = x_40.x_UserLut_Params;
    let x_307 : vec2<f32> = (vec2<f32>(x_303.x, x_303.y) * vec2<f32>(0.5f, 0.5f));
    let x_308 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_307.x, x_308.y, x_308.z, x_307.y);
    let x_310 : vec4<f32> = u_xlat2;
    let x_313 : vec4<f32> = x_40.x_UserLut_Params;
    let x_316 : vec4<f32> = u_xlat2;
    let x_318 : vec2<f32> = ((vec2<f32>(x_310.y, x_310.z) * vec2<f32>(x_313.x, x_313.y)) + vec2<f32>(x_316.x, x_316.w));
    let x_319 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_319.x, x_318.x, x_318.y, x_319.w);
    let x_321 : f32 = u_xlat15;
    let x_323 : f32 = x_40.x_UserLut_Params.y;
    let x_326 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_321 * x_323) + x_326);
    let x_334 : vec4<f32> = u_xlat2;
    let x_336 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_334.x, x_334.z), 0.0f);
    u_xlat3 = vec3<f32>(x_336.x, x_336.y, x_336.z);
    let x_341 : f32 = x_40.x_UserLut_Params.y;
    u_xlat4.x = x_341;
    u_xlat4.y = 0.0f;
    let x_344 : vec4<f32> = u_xlat2;
    let x_346 : vec2<f32> = u_xlat4;
    let x_347 : vec2<f32> = (vec2<f32>(x_344.x, x_344.z) + x_346);
    let x_348 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_347.x, x_347.y, x_348.z, x_348.w);
    let x_353 : vec4<f32> = u_xlat2;
    let x_355 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_353.x, x_353.y), 0.0f);
    let x_356 : vec3<f32> = vec3<f32>(x_355.x, x_355.y, x_355.z);
    let x_357 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
    let x_360 : f32 = u_xlat1.z;
    let x_362 : f32 = x_40.x_UserLut_Params.z;
    let x_364 : f32 = u_xlat15;
    u_xlat15 = ((x_360 * x_362) + -(x_364));
    let x_367 : vec3<f32> = u_xlat3;
    let x_369 : vec4<f32> = u_xlat2;
    let x_371 : vec3<f32> = (-(x_367) + vec3<f32>(x_369.x, x_369.y, x_369.z));
    let x_372 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
    let x_374 : f32 = u_xlat15;
    let x_376 : vec4<f32> = u_xlat2;
    let x_379 : vec3<f32> = u_xlat3;
    let x_380 : vec3<f32> = ((vec3<f32>(x_374, x_374, x_374) * vec3<f32>(x_376.x, x_376.y, x_376.z)) + x_379);
    let x_381 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
    let x_383 : vec3<f32> = u_xlat1;
    let x_385 : vec4<f32> = u_xlat2;
    let x_387 : vec3<f32> = (-(x_383) + vec3<f32>(x_385.x, x_385.y, x_385.z));
    let x_388 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
    let x_391 : vec4<f32> = x_40.x_UserLut_Params;
    let x_393 : vec4<f32> = u_xlat2;
    let x_396 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_391.w, x_391.w, x_391.w) * vec3<f32>(x_393.x, x_393.y, x_393.z)) + x_396);
    let x_398 : vec3<f32> = u_xlat1;
    let x_401 : vec3<f32> = (x_398 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_402 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
    let x_404 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_404 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_408 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_408 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_412 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_412));
    let x_415 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_415 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_419 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_419);
    let x_424 : vec3<f32> = u_xlat1;
    let x_426 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_424.x, x_424.y, x_424.z, x_424.x));
    u_xlatb1 = vec3<bool>(x_426.x, x_426.y, x_426.z);
    let x_429 : bool = u_xlatb1.x;
    if (x_429) {
      let x_434 : f32 = u_xlat2.x;
      x_430 = x_434;
    } else {
      let x_437 : f32 = u_xlat3.x;
      x_430 = x_437;
    }
    let x_438 : f32 = x_430;
    u_xlat0.x = x_438;
    let x_441 : bool = u_xlatb1.y;
    if (x_441) {
      let x_446 : f32 = u_xlat2.y;
      x_442 = x_446;
    } else {
      let x_449 : f32 = u_xlat3.y;
      x_442 = x_449;
    }
    let x_450 : f32 = x_442;
    u_xlat0.y = x_450;
    let x_453 : bool = u_xlatb1.z;
    if (x_453) {
      let x_458 : f32 = u_xlat2.z;
      x_454 = x_458;
    } else {
      let x_461 : f32 = u_xlat3.z;
      x_454 = x_461;
    }
    let x_462 : f32 = x_454;
    u_xlat0.z = x_462;
  }
  let x_464 : vec4<f32> = u_xlat0;
  let x_467 : vec4<f32> = x_40.x_Lut_Params;
  let x_469 : vec3<f32> = (vec3<f32>(x_464.x, x_464.y, x_464.z) * vec3<f32>(x_467.z, x_467.z, x_467.z));
  let x_470 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_469.x, x_469.y, x_470.z, x_469.z);
  let x_473 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_473);
  let x_476 : vec4<f32> = x_40.x_Lut_Params;
  let x_478 : vec2<f32> = (vec2<f32>(x_476.x, x_476.y) * vec2<f32>(0.5f, 0.5f));
  let x_479 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_478.x, x_478.y, x_479.z);
  let x_481 : vec4<f32> = u_xlat0;
  let x_484 : vec4<f32> = x_40.x_Lut_Params;
  let x_487 : vec3<f32> = u_xlat1;
  let x_489 : vec2<f32> = ((vec2<f32>(x_481.x, x_481.y) * vec2<f32>(x_484.x, x_484.y)) + vec2<f32>(x_487.x, x_487.y));
  let x_490 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_490.x, x_489.x, x_489.y);
  let x_492 : f32 = u_xlat15;
  let x_494 : f32 = x_40.x_Lut_Params.y;
  let x_497 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_492 * x_494) + x_497);
  let x_504 : vec3<f32> = u_xlat1;
  let x_506 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_504.x, x_504.z), 0.0f);
  let x_507 : vec3<f32> = vec3<f32>(x_506.x, x_506.y, x_506.z);
  let x_508 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_511 : f32 = x_40.x_Lut_Params.y;
  u_xlat0.x = x_511;
  u_xlat0.y = 0.0f;
  let x_514 : vec4<f32> = u_xlat0;
  let x_516 : vec3<f32> = u_xlat1;
  let x_518 : vec2<f32> = (vec2<f32>(x_514.x, x_514.y) + vec2<f32>(x_516.x, x_516.z));
  let x_519 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_518.x, x_518.y, x_519.z, x_519.w);
  let x_524 : vec4<f32> = u_xlat0;
  let x_526 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_524.x, x_524.y), 0.0f);
  u_xlat1 = vec3<f32>(x_526.x, x_526.y, x_526.z);
  let x_529 : f32 = u_xlat0.z;
  let x_531 : f32 = x_40.x_Lut_Params.z;
  let x_533 : f32 = u_xlat15;
  u_xlat0.x = ((x_529 * x_531) + -(x_533));
  let x_537 : vec4<f32> = u_xlat2;
  let x_540 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_537.x, x_537.y, x_537.z)) + x_540);
  let x_542 : vec4<f32> = u_xlat0;
  let x_544 : vec3<f32> = u_xlat5;
  let x_546 : vec4<f32> = u_xlat2;
  let x_548 : vec3<f32> = ((vec3<f32>(x_542.x, x_542.x, x_542.x) * x_544) + vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_549 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_551 : vec2<f32> = vs_TEXCOORD0;
  let x_554 : vec4<f32> = x_40.x_Grain_TilingParams;
  let x_558 : vec4<f32> = x_40.x_Grain_TilingParams;
  let x_560 : vec2<f32> = ((x_551 * vec2<f32>(x_554.x, x_554.y)) + vec2<f32>(x_558.z, x_558.w));
  let x_561 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_560.x, x_560.y, x_561.z);
  let x_568 : vec3<f32> = u_xlat1;
  let x_571 : f32 = x_40.x_GlobalMipBias.x;
  let x_572 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_568.x, x_568.y), x_571);
  u_xlat15 = x_572.w;
  let x_574 : f32 = u_xlat15;
  u_xlat15 = (x_574 + -0.5f);
  let x_577 : f32 = u_xlat15;
  let x_578 : f32 = u_xlat15;
  u_xlat15 = (x_577 + x_578);
  let x_580 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_580.x, x_580.y, x_580.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_589 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_589);
  let x_594 : f32 = x_40.x_Grain_Params.y;
  let x_596 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_594 * -(x_596)) + 1.0f);
  let x_602 : f32 = u_xlat15;
  let x_604 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_602, x_602, x_602) * vec3<f32>(x_604.x, x_604.y, x_604.z));
  let x_607 : vec3<f32> = u_xlat6;
  let x_610 : vec2<f32> = x_40.x_Grain_Params;
  u_xlat6 = (x_607 * vec3<f32>(x_610.x, x_610.x, x_610.x));
  let x_613 : vec3<f32> = u_xlat6;
  let x_614 : vec3<f32> = u_xlat1;
  let x_617 : vec4<f32> = u_xlat0;
  let x_619 : vec3<f32> = ((x_613 * vec3<f32>(x_614.x, x_614.x, x_614.x)) + vec3<f32>(x_617.x, x_617.y, x_617.z));
  let x_620 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_622 : vec2<f32> = vs_TEXCOORD0;
  let x_625 : vec4<f32> = x_40.x_Dithering_Params;
  let x_629 : vec4<f32> = x_40.x_Dithering_Params;
  let x_631 : vec2<f32> = ((x_622 * vec2<f32>(x_625.x, x_625.y)) + vec2<f32>(x_629.z, x_629.w));
  let x_632 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_631.x, x_631.y, x_632.z);
  let x_639 : vec3<f32> = u_xlat1;
  let x_642 : f32 = x_40.x_GlobalMipBias.x;
  let x_643 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_639.x, x_639.y), x_642);
  u_xlat15 = x_643.w;
  let x_645 : f32 = u_xlat15;
  u_xlat15 = ((x_645 * 2.0f) + -1.0f);
  let x_648 : f32 = u_xlat15;
  u_xlatb1.x = (x_648 >= 0.0f);
  let x_652 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_652);
  let x_655 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_655)) + 1.0f);
  let x_659 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_659);
  let x_661 : f32 = u_xlat15;
  u_xlat15 = (-(x_661) + 1.0f);
  let x_664 : f32 = u_xlat15;
  let x_666 : f32 = u_xlat1.x;
  u_xlat15 = (x_664 * x_666);
  let x_668 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_668.x, x_668.y, x_668.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_671 : vec4<f32> = u_xlat0;
  let x_674 : vec3<f32> = log2(abs(vec3<f32>(x_671.x, x_671.y, x_671.z)));
  let x_675 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
  let x_677 : vec4<f32> = u_xlat2;
  let x_679 : vec3<f32> = (vec3<f32>(x_677.x, x_677.y, x_677.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_680 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : vec4<f32> = u_xlat2;
  let x_684 : vec3<f32> = exp2(vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_685 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_687 : vec4<f32> = u_xlat2;
  let x_690 : vec3<f32> = ((vec3<f32>(x_687.x, x_687.y, x_687.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_691 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : vec4<f32> = u_xlat0;
  let x_695 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_693.x, x_693.y, x_693.z, x_693.x));
  u_xlatb0 = vec3<bool>(x_695.x, x_695.y, x_695.z);
  let x_698 : bool = u_xlatb0.x;
  if (x_698) {
    let x_703 : f32 = u_xlat1.x;
    x_699 = x_703;
  } else {
    let x_706 : f32 = u_xlat2.x;
    x_699 = x_706;
  }
  let x_707 : f32 = x_699;
  u_xlat0.x = x_707;
  let x_710 : bool = u_xlatb0.y;
  if (x_710) {
    let x_715 : f32 = u_xlat1.y;
    x_711 = x_715;
  } else {
    let x_718 : f32 = u_xlat2.y;
    x_711 = x_718;
  }
  let x_719 : f32 = x_711;
  u_xlat0.y = x_719;
  let x_722 : bool = u_xlatb0.z;
  if (x_722) {
    let x_727 : f32 = u_xlat1.z;
    x_723 = x_727;
  } else {
    let x_730 : f32 = u_xlat2.z;
    x_723 = x_730;
  }
  let x_731 : f32 = x_723;
  u_xlat0.z = x_731;
  let x_733 : f32 = u_xlat15;
  let x_738 : vec4<f32> = u_xlat0;
  let x_740 : vec3<f32> = ((vec3<f32>(x_733, x_733, x_733) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_738.x, x_738.y, x_738.z));
  let x_741 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
  let x_743 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_743.x, x_743.y, x_743.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_746 : vec4<f32> = u_xlat0;
  let x_748 : vec3<f32> = (vec3<f32>(x_746.x, x_746.y, x_746.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_749 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_748.x, x_748.y, x_748.z, x_749.w);
  let x_751 : vec4<f32> = u_xlat2;
  let x_753 : vec3<f32> = (vec3<f32>(x_751.x, x_751.y, x_751.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_754 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_753.x, x_753.y, x_753.z, x_754.w);
  let x_756 : vec4<f32> = u_xlat2;
  let x_759 : vec3<f32> = log2(abs(vec3<f32>(x_756.x, x_756.y, x_756.z)));
  let x_760 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
  let x_762 : vec4<f32> = u_xlat2;
  let x_764 : vec3<f32> = (vec3<f32>(x_762.x, x_762.y, x_762.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_765 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
  let x_767 : vec4<f32> = u_xlat2;
  let x_769 : vec3<f32> = exp2(vec3<f32>(x_767.x, x_767.y, x_767.z));
  let x_770 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
  let x_772 : vec4<f32> = u_xlat0;
  let x_774 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_772.x, x_772.y, x_772.z, x_772.x));
  u_xlatb0 = vec3<bool>(x_774.x, x_774.y, x_774.z);
  let x_777 : bool = u_xlatb0.x;
  if (x_777) {
    let x_782 : f32 = u_xlat1.x;
    x_778 = x_782;
  } else {
    let x_785 : f32 = u_xlat2.x;
    x_778 = x_785;
  }
  let x_786 : f32 = x_778;
  u_xlat0.x = x_786;
  let x_789 : bool = u_xlatb0.y;
  if (x_789) {
    let x_794 : f32 = u_xlat1.y;
    x_790 = x_794;
  } else {
    let x_797 : f32 = u_xlat2.y;
    x_790 = x_797;
  }
  let x_798 : f32 = x_790;
  u_xlat0.y = x_798;
  let x_801 : bool = u_xlatb0.z;
  if (x_801) {
    let x_806 : f32 = u_xlat1.z;
    x_802 = x_806;
  } else {
    let x_809 : f32 = u_xlat2.z;
    x_802 = x_809;
  }
  let x_810 : f32 = x_802;
  u_xlat0.z = x_810;
  let x_814 : vec4<f32> = u_xlat0;
  let x_817 : vec3<f32> = max(vec3<f32>(x_814.x, x_814.y, x_814.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_818 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
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

