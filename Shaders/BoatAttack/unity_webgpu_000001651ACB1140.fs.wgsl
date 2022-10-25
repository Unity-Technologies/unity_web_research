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

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

@group(0) @binding(1) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb0 : bool;
  var u_xlat5 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat10 : vec2<f32>;
  var u_xlatb15 : bool;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_386 : f32;
  var x_398 : f32;
  var x_410 : f32;
  var u_xlat15 : f32;
  var u_xlat4 : vec2<f32>;
  var u_xlatb1 : vec3<bool>;
  var x_557 : f32;
  var x_569 : f32;
  var x_581 : f32;
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
  let x_187 : vec4<f32> = x_40.x_Lut_Params;
  let x_189 : vec3<f32> = (vec3<f32>(x_183.z, x_183.x, x_183.y) * vec3<f32>(x_187.w, x_187.w, x_187.w));
  let x_190 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_192 : vec4<f32> = u_xlat0;
  let x_199 : vec3<f32> = ((vec3<f32>(x_192.x, x_192.y, x_192.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_200 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  let x_202 : vec4<f32> = u_xlat0;
  let x_205 : vec3<f32> = max(vec3<f32>(x_202.x, x_202.y, x_202.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_206 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  let x_208 : vec4<f32> = u_xlat0;
  let x_210 : vec3<f32> = log2(vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_211 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_213 : vec4<f32> = u_xlat0;
  let x_220 : vec3<f32> = ((vec3<f32>(x_213.x, x_213.y, x_213.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_221 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  let x_223 : vec4<f32> = u_xlat0;
  let x_227 : vec3<f32> = clamp(vec3<f32>(x_223.x, x_223.y, x_223.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_228 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_230 : vec4<f32> = u_xlat0;
  let x_233 : vec4<f32> = x_40.x_Lut_Params;
  u_xlat5 = (vec3<f32>(x_230.x, x_230.y, x_230.z) * vec3<f32>(x_233.z, x_233.z, x_233.z));
  let x_237 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_237);
  let x_241 : vec4<f32> = x_40.x_Lut_Params;
  let x_245 : vec2<f32> = (vec2<f32>(x_241.x, x_241.y) * vec2<f32>(0.5f, 0.5f));
  let x_246 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_245.x, x_245.y, x_246.z);
  let x_248 : vec3<f32> = u_xlat5;
  let x_251 : vec4<f32> = x_40.x_Lut_Params;
  let x_254 : vec3<f32> = u_xlat1;
  let x_256 : vec2<f32> = ((vec2<f32>(x_248.y, x_248.z) * vec2<f32>(x_251.x, x_251.y)) + vec2<f32>(x_254.x, x_254.y));
  let x_257 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_257.x, x_256.x, x_256.y);
  let x_260 : f32 = u_xlat5.x;
  let x_262 : f32 = x_40.x_Lut_Params.y;
  let x_265 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_260 * x_262) + x_265);
  let x_273 : vec3<f32> = u_xlat1;
  let x_275 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_273.x, x_273.z), 0.0f);
  let x_276 : vec3<f32> = vec3<f32>(x_275.x, x_275.y, x_275.z);
  let x_277 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_281 : f32 = x_40.x_Lut_Params.y;
  u_xlat3.x = x_281;
  u_xlat3.y = 0.0f;
  let x_286 : vec3<f32> = u_xlat1;
  let x_288 : vec3<f32> = u_xlat3;
  u_xlat10 = (vec2<f32>(x_286.x, x_286.z) + vec2<f32>(x_288.x, x_288.y));
  let x_294 : vec2<f32> = u_xlat10;
  let x_295 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, x_294, 0.0f);
  u_xlat1 = vec3<f32>(x_295.x, x_295.y, x_295.z);
  let x_298 : f32 = u_xlat0.x;
  let x_300 : f32 = x_40.x_Lut_Params.z;
  let x_303 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_298 * x_300) + -(x_303));
  let x_307 : vec4<f32> = u_xlat2;
  let x_310 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_307.x, x_307.y, x_307.z)) + x_310);
  let x_312 : vec4<f32> = u_xlat0;
  let x_314 : vec3<f32> = u_xlat5;
  let x_316 : vec4<f32> = u_xlat2;
  let x_318 : vec3<f32> = ((vec3<f32>(x_312.x, x_312.x, x_312.x) * x_314) + vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_324 : f32 = x_40.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_324);
  let x_326 : bool = u_xlatb15;
  if (x_326) {
    let x_329 : vec4<f32> = u_xlat0;
    let x_330 : vec3<f32> = vec3<f32>(x_329.x, x_329.y, x_329.z);
    let x_331 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
    let x_333 : vec4<f32> = u_xlat0;
    let x_337 : vec3<f32> = clamp(vec3<f32>(x_333.x, x_333.y, x_333.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_338 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
    let x_340 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_340.x, x_340.y, x_340.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_345 : vec4<f32> = u_xlat0;
    let x_347 : vec3<f32> = log2(vec3<f32>(x_345.x, x_345.y, x_345.z));
    let x_348 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
    let x_350 : vec4<f32> = u_xlat2;
    let x_354 : vec3<f32> = (vec3<f32>(x_350.x, x_350.y, x_350.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_355 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
    let x_357 : vec4<f32> = u_xlat2;
    let x_359 : vec3<f32> = exp2(vec3<f32>(x_357.x, x_357.y, x_357.z));
    let x_360 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
    let x_362 : vec4<f32> = u_xlat2;
    let x_369 : vec3<f32> = ((vec3<f32>(x_362.x, x_362.y, x_362.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_370 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
    let x_377 : vec4<f32> = u_xlat0;
    let x_380 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_377.x, x_377.y, x_377.z, x_377.x));
    u_xlatb3 = vec3<bool>(x_380.x, x_380.y, x_380.z);
    let x_383 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_383;
    let x_385 : bool = u_xlatb3.x;
    if (x_385) {
      let x_390 : f32 = u_xlat1.x;
      x_386 = x_390;
    } else {
      let x_393 : f32 = u_xlat2.x;
      x_386 = x_393;
    }
    let x_394 : f32 = x_386;
    hlslcc_movcTemp.x = x_394;
    let x_397 : bool = u_xlatb3.y;
    if (x_397) {
      let x_402 : f32 = u_xlat1.y;
      x_398 = x_402;
    } else {
      let x_405 : f32 = u_xlat2.y;
      x_398 = x_405;
    }
    let x_406 : f32 = x_398;
    hlslcc_movcTemp.y = x_406;
    let x_409 : bool = u_xlatb3.z;
    if (x_409) {
      let x_414 : f32 = u_xlat1.z;
      x_410 = x_414;
    } else {
      let x_417 : f32 = u_xlat2.z;
      x_410 = x_417;
    }
    let x_418 : f32 = x_410;
    hlslcc_movcTemp.z = x_418;
    let x_420 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_420;
    let x_421 : vec3<f32> = u_xlat1;
    let x_424 : vec4<f32> = x_40.x_UserLut_Params;
    let x_426 : vec3<f32> = (vec3<f32>(x_421.z, x_421.x, x_421.y) * vec3<f32>(x_424.z, x_424.z, x_424.z));
    let x_427 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
    let x_431 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_431);
    let x_434 : vec4<f32> = x_40.x_UserLut_Params;
    let x_436 : vec2<f32> = (vec2<f32>(x_434.x, x_434.y) * vec2<f32>(0.5f, 0.5f));
    let x_437 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_436.x, x_437.y, x_437.z, x_436.y);
    let x_439 : vec4<f32> = u_xlat2;
    let x_442 : vec4<f32> = x_40.x_UserLut_Params;
    let x_445 : vec4<f32> = u_xlat2;
    let x_447 : vec2<f32> = ((vec2<f32>(x_439.y, x_439.z) * vec2<f32>(x_442.x, x_442.y)) + vec2<f32>(x_445.x, x_445.w));
    let x_448 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_448.x, x_447.x, x_447.y, x_448.w);
    let x_450 : f32 = u_xlat15;
    let x_452 : f32 = x_40.x_UserLut_Params.y;
    let x_455 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_450 * x_452) + x_455);
    let x_462 : vec4<f32> = u_xlat2;
    let x_464 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_462.x, x_462.z), 0.0f);
    u_xlat3 = vec3<f32>(x_464.x, x_464.y, x_464.z);
    let x_468 : f32 = x_40.x_UserLut_Params.y;
    u_xlat4.x = x_468;
    u_xlat4.y = 0.0f;
    let x_471 : vec4<f32> = u_xlat2;
    let x_473 : vec2<f32> = u_xlat4;
    let x_474 : vec2<f32> = (vec2<f32>(x_471.x, x_471.z) + x_473);
    let x_475 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_474.x, x_474.y, x_475.z, x_475.w);
    let x_480 : vec4<f32> = u_xlat2;
    let x_482 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_480.x, x_480.y), 0.0f);
    let x_483 : vec3<f32> = vec3<f32>(x_482.x, x_482.y, x_482.z);
    let x_484 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
    let x_487 : f32 = u_xlat1.z;
    let x_489 : f32 = x_40.x_UserLut_Params.z;
    let x_491 : f32 = u_xlat15;
    u_xlat15 = ((x_487 * x_489) + -(x_491));
    let x_494 : vec3<f32> = u_xlat3;
    let x_496 : vec4<f32> = u_xlat2;
    let x_498 : vec3<f32> = (-(x_494) + vec3<f32>(x_496.x, x_496.y, x_496.z));
    let x_499 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
    let x_501 : f32 = u_xlat15;
    let x_503 : vec4<f32> = u_xlat2;
    let x_506 : vec3<f32> = u_xlat3;
    let x_507 : vec3<f32> = ((vec3<f32>(x_501, x_501, x_501) * vec3<f32>(x_503.x, x_503.y, x_503.z)) + x_506);
    let x_508 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
    let x_510 : vec3<f32> = u_xlat1;
    let x_512 : vec4<f32> = u_xlat2;
    let x_514 : vec3<f32> = (-(x_510) + vec3<f32>(x_512.x, x_512.y, x_512.z));
    let x_515 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
    let x_518 : vec4<f32> = x_40.x_UserLut_Params;
    let x_520 : vec4<f32> = u_xlat2;
    let x_523 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_518.w, x_518.w, x_518.w) * vec3<f32>(x_520.x, x_520.y, x_520.z)) + x_523);
    let x_525 : vec3<f32> = u_xlat1;
    let x_528 : vec3<f32> = (x_525 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_529 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
    let x_531 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_531 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_535 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_535 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_539 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_539));
    let x_542 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_542 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_546 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_546);
    let x_551 : vec3<f32> = u_xlat1;
    let x_553 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_551.x, x_551.y, x_551.z, x_551.x));
    u_xlatb1 = vec3<bool>(x_553.x, x_553.y, x_553.z);
    let x_556 : bool = u_xlatb1.x;
    if (x_556) {
      let x_561 : f32 = u_xlat2.x;
      x_557 = x_561;
    } else {
      let x_564 : f32 = u_xlat3.x;
      x_557 = x_564;
    }
    let x_565 : f32 = x_557;
    u_xlat0.x = x_565;
    let x_568 : bool = u_xlatb1.y;
    if (x_568) {
      let x_573 : f32 = u_xlat2.y;
      x_569 = x_573;
    } else {
      let x_576 : f32 = u_xlat3.y;
      x_569 = x_576;
    }
    let x_577 : f32 = x_569;
    u_xlat0.y = x_577;
    let x_580 : bool = u_xlatb1.z;
    if (x_580) {
      let x_585 : f32 = u_xlat2.z;
      x_581 = x_585;
    } else {
      let x_588 : f32 = u_xlat3.z;
      x_581 = x_588;
    }
    let x_589 : f32 = x_581;
    u_xlat0.z = x_589;
  }
  let x_591 : vec2<f32> = vs_TEXCOORD0;
  let x_594 : vec4<f32> = x_40.x_Grain_TilingParams;
  let x_598 : vec4<f32> = x_40.x_Grain_TilingParams;
  let x_600 : vec2<f32> = ((x_591 * vec2<f32>(x_594.x, x_594.y)) + vec2<f32>(x_598.z, x_598.w));
  let x_601 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_600.x, x_600.y, x_601.z);
  let x_608 : vec3<f32> = u_xlat1;
  let x_611 : f32 = x_40.x_GlobalMipBias.x;
  let x_612 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_608.x, x_608.y), x_611);
  u_xlat15 = x_612.w;
  let x_614 : f32 = u_xlat15;
  u_xlat15 = (x_614 + -0.5f);
  let x_617 : f32 = u_xlat15;
  let x_618 : f32 = u_xlat15;
  u_xlat15 = (x_617 + x_618);
  let x_620 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_620.x, x_620.y, x_620.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_629 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_629);
  let x_634 : f32 = x_40.x_Grain_Params.y;
  let x_636 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_634 * -(x_636)) + 1.0f);
  let x_642 : f32 = u_xlat15;
  let x_644 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_642, x_642, x_642) * vec3<f32>(x_644.x, x_644.y, x_644.z));
  let x_647 : vec3<f32> = u_xlat6;
  let x_650 : vec2<f32> = x_40.x_Grain_Params;
  u_xlat6 = (x_647 * vec3<f32>(x_650.x, x_650.x, x_650.x));
  let x_653 : vec3<f32> = u_xlat6;
  let x_654 : vec3<f32> = u_xlat1;
  let x_657 : vec4<f32> = u_xlat0;
  let x_659 : vec3<f32> = ((x_653 * vec3<f32>(x_654.x, x_654.x, x_654.x)) + vec3<f32>(x_657.x, x_657.y, x_657.z));
  let x_660 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_659.x, x_659.y, x_659.z, x_660.w);
  let x_664 : vec4<f32> = u_xlat0;
  let x_666 : vec3<f32> = sqrt(vec3<f32>(x_664.x, x_664.y, x_664.z));
  let x_667 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
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

