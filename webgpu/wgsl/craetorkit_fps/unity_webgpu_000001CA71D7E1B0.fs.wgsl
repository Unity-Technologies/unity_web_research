struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

var<private> vs_TEXCOORD3 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_Gradient : texture_2d<f32>;

@group(0) @binding(5) var sampler_Gradient : sampler;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(3) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(4) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlatb22 : bool;
  var u_xlat4 : vec4<f32>;
  var x_207 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat9 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat8 : f32;
  var u_xlatb21 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD2;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat21;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_39 : vec3<f32> = vs_TEXCOORD2;
  let x_44 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_39) + x_44);
  let x_47 : vec3<f32> = u_xlat2;
  let x_48 : vec3<f32> = u_xlat2;
  u_xlat22 = dot(x_47, x_48);
  let x_50 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_50);
  let x_52 : f32 = u_xlat22;
  let x_54 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_52, x_52, x_52) * x_54);
  let x_58 : f32 = vs_TEXCOORD3;
  u_xlat22 = (x_58 + -1.0f);
  let x_61 : f32 = u_xlat22;
  u_xlat22 = (x_61 * -9.999998093f);
  let x_64 : f32 = u_xlat22;
  u_xlat22 = clamp(x_64, 0.0f, 1.0f);
  let x_69 : f32 = u_xlat22;
  let x_75 : vec2<f32> = vs_TEXCOORD0;
  let x_76 : vec2<f32> = (-(vec2<f32>(x_69, x_69)) + x_75);
  let x_77 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_76.x, x_76.y, x_77.z);
  let x_89 : vec3<f32> = u_xlat3;
  let x_91 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_89.x, x_89.y));
  u_xlat22 = x_91.x;
  let x_99 : vec2<f32> = vs_TEXCOORD0;
  let x_100 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, x_99);
  u_xlat23 = x_100.z;
  let x_103 : f32 = u_xlat22;
  u_xlat22 = ((x_103 * -2.0f) + 1.0f);
  let x_107 : f32 = u_xlat23;
  let x_109 : f32 = u_xlat22;
  u_xlat22 = (-(x_107) + x_109);
  let x_114 : f32 = u_xlat22;
  u_xlatb22 = (x_114 < 0.0f);
  let x_116 : bool = u_xlatb22;
  if (((select(0i, 1i, x_116) * -1i) != 0i)) {
    discard;
  }
  let x_124 : vec3<f32> = vs_TEXCOORD2;
  let x_128 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat3 = (vec3<f32>(x_124.y, x_124.y, x_124.y) * vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_132 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_134 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_132.x, x_132.y, x_132.z) * vec3<f32>(x_134.x, x_134.x, x_134.x)) + x_137);
  let x_141 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_143 : vec3<f32> = vs_TEXCOORD2;
  let x_146 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_141.x, x_141.y, x_141.z) * vec3<f32>(x_143.z, x_143.z, x_143.z)) + x_146);
  let x_148 : vec3<f32> = u_xlat3;
  let x_151 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat3 = (x_148 + vec3<f32>(x_151.x, x_151.y, x_151.z));
  let x_156 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_156 == 1.0f);
  let x_158 : bool = u_xlatb22;
  if (x_158) {
    let x_163 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_163 == 1.0f);
    let x_167 : vec3<f32> = vs_TEXCOORD2;
    let x_171 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_173 : vec3<f32> = (vec3<f32>(x_167.y, x_167.y, x_167.y) * vec3<f32>(x_171.x, x_171.y, x_171.z));
    let x_174 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
    let x_177 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_179 : vec3<f32> = vs_TEXCOORD2;
    let x_182 : vec4<f32> = u_xlat4;
    let x_184 : vec3<f32> = ((vec3<f32>(x_177.x, x_177.y, x_177.z) * vec3<f32>(x_179.x, x_179.x, x_179.x)) + vec3<f32>(x_182.x, x_182.y, x_182.z));
    let x_185 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
    let x_188 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_190 : vec3<f32> = vs_TEXCOORD2;
    let x_193 : vec4<f32> = u_xlat4;
    let x_195 : vec3<f32> = ((vec3<f32>(x_188.x, x_188.y, x_188.z) * vec3<f32>(x_190.z, x_190.z, x_190.z)) + vec3<f32>(x_193.x, x_193.y, x_193.z));
    let x_196 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
    let x_198 : vec4<f32> = u_xlat4;
    let x_201 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_203 : vec3<f32> = (vec3<f32>(x_198.x, x_198.y, x_198.z) + vec3<f32>(x_201.x, x_201.y, x_201.z));
    let x_204 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
    let x_206 : bool = u_xlatb22;
    if (x_206) {
      let x_210 : vec4<f32> = u_xlat4;
      x_207 = vec3<f32>(x_210.x, x_210.y, x_210.z);
    } else {
      let x_213 : vec3<f32> = vs_TEXCOORD2;
      x_207 = x_213;
    }
    let x_214 : vec3<f32> = x_207;
    let x_215 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
    let x_217 : vec4<f32> = u_xlat4;
    let x_221 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_223 : vec3<f32> = (vec3<f32>(x_217.x, x_217.y, x_217.z) + -(x_221));
    let x_224 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
    let x_226 : vec4<f32> = u_xlat4;
    let x_230 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_231 : vec3<f32> = (vec3<f32>(x_226.x, x_226.y, x_226.z) * x_230);
    let x_232 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_232.x, x_231.x, x_231.y, x_231.z);
    let x_235 : f32 = u_xlat4.y;
    u_xlat22 = ((x_235 * 0.25f) + 0.75f);
    let x_241 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_241 * 0.5f) + 0.75f);
    let x_245 : f32 = u_xlat22;
    let x_246 : f32 = u_xlat23;
    u_xlat4.x = max(x_245, x_246);
    let x_257 : vec4<f32> = u_xlat4;
    let x_259 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_257.x, x_257.z, x_257.w));
    u_xlat4 = x_259;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_266 : vec4<f32> = u_xlat4;
  let x_268 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_266, x_268);
  let x_270 : f32 = u_xlat22;
  u_xlat22 = clamp(x_270, 0.0f, 1.0f);
  let x_272 : vec3<f32> = u_xlat3;
  let x_273 : vec3<f32> = u_xlat3;
  u_xlat23 = dot(x_272, x_273);
  let x_280 : f32 = u_xlat23;
  let x_282 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_280, x_280));
  u_xlat23 = x_282.x;
  let x_284 : f32 = u_xlat22;
  let x_285 : f32 = u_xlat23;
  u_xlat22 = (x_284 * x_285);
  let x_287 : f32 = u_xlat22;
  let x_291 : vec4<f32> = x_18.x_LightColor0;
  u_xlat3 = (vec3<f32>(x_287, x_287, x_287) * vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_295 : vec3<f32> = vs_TEXCOORD1;
  let x_296 : vec3<f32> = vs_TEXCOORD1;
  u_xlat22 = dot(x_295, x_296);
  let x_298 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_298);
  let x_300 : f32 = u_xlat22;
  let x_302 : vec3<f32> = vs_TEXCOORD1;
  let x_303 : vec3<f32> = (vec3<f32>(x_300, x_300, x_300) * x_302);
  let x_304 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_309 : vec4<f32> = x_18.x_Color;
  u_xlat5 = (vec3<f32>(x_309.x, x_309.y, x_309.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_316 : f32 = x_18.x_Metallic;
  let x_318 : f32 = x_18.x_Metallic;
  let x_320 : f32 = x_18.x_Metallic;
  let x_321 : vec3<f32> = vec3<f32>(x_316, x_318, x_320);
  let x_326 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_321.x, x_321.y, x_321.z) * x_326) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_332 : f32 = x_18.x_Metallic;
  u_xlat22 = ((-(x_332) * 0.959999979f) + 0.959999979f);
  let x_338 : f32 = u_xlat22;
  let x_341 : vec4<f32> = x_18.x_Color;
  u_xlat6 = (vec3<f32>(x_338, x_338, x_338) * vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_346 : f32 = x_18.x_Glossiness;
  u_xlat22 = (-(x_346) + 1.0f);
  let x_349 : vec3<f32> = u_xlat0;
  let x_350 : f32 = u_xlat21;
  let x_353 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_349 * vec3<f32>(x_350, x_350, x_350)) + x_353);
  let x_355 : vec3<f32> = u_xlat0;
  let x_356 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_355, x_356);
  let x_358 : f32 = u_xlat21;
  u_xlat21 = max(x_358, 0.001f);
  let x_361 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_361);
  let x_363 : f32 = u_xlat21;
  let x_365 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_363, x_363, x_363) * x_365);
  let x_367 : vec4<f32> = u_xlat4;
  let x_369 : vec3<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_367.x, x_367.y, x_367.z), x_369);
  let x_371 : vec4<f32> = u_xlat4;
  let x_373 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(vec3<f32>(x_371.x, x_371.y, x_371.z), x_373);
  let x_377 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_377, 0.0f, 1.0f);
  let x_381 : vec4<f32> = u_xlat4;
  let x_383 : vec3<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_381.x, x_381.y, x_381.z), x_383);
  let x_385 : f32 = u_xlat9;
  u_xlat9 = clamp(x_385, 0.0f, 1.0f);
  let x_387 : vec3<f32> = u_xlat1;
  let x_388 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_387, x_388);
  let x_392 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_392, 0.0f, 1.0f);
  let x_397 : f32 = u_xlat0.x;
  let x_399 : f32 = u_xlat0.x;
  u_xlat7.x = (x_397 * x_399);
  let x_402 : vec3<f32> = u_xlat7;
  let x_404 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_402.x, x_402.x), vec2<f32>(x_404, x_404));
  let x_409 : f32 = u_xlat7.x;
  u_xlat7.x = (x_409 + -0.5f);
  let x_415 : f32 = u_xlat2.x;
  u_xlat14 = (-(x_415) + 1.0f);
  let x_418 : f32 = u_xlat14;
  let x_419 : f32 = u_xlat14;
  u_xlat1.x = (x_418 * x_419);
  let x_423 : f32 = u_xlat1.x;
  let x_425 : f32 = u_xlat1.x;
  u_xlat1.x = (x_423 * x_425);
  let x_428 : f32 = u_xlat14;
  let x_430 : f32 = u_xlat1.x;
  u_xlat14 = (x_428 * x_430);
  let x_433 : f32 = u_xlat7.x;
  let x_434 : f32 = u_xlat14;
  u_xlat14 = ((x_433 * x_434) + 1.0f);
  let x_437 : f32 = u_xlat21;
  u_xlat1.x = (-(abs(x_437)) + 1.0f);
  let x_444 : f32 = u_xlat1.x;
  let x_446 : f32 = u_xlat1.x;
  u_xlat8 = (x_444 * x_446);
  let x_448 : f32 = u_xlat8;
  let x_449 : f32 = u_xlat8;
  u_xlat8 = (x_448 * x_449);
  let x_452 : f32 = u_xlat1.x;
  let x_453 : f32 = u_xlat8;
  u_xlat1.x = (x_452 * x_453);
  let x_457 : f32 = u_xlat7.x;
  let x_459 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_457 * x_459) + 1.0f);
  let x_464 : f32 = u_xlat7.x;
  let x_465 : f32 = u_xlat14;
  u_xlat7.x = (x_464 * x_465);
  let x_468 : f32 = u_xlat22;
  let x_469 : f32 = u_xlat22;
  u_xlat14 = (x_468 * x_469);
  let x_471 : f32 = u_xlat14;
  u_xlat14 = max(x_471, 0.002f);
  let x_474 : f32 = u_xlat14;
  u_xlat1.x = (-(x_474) + 1.0f);
  let x_478 : f32 = u_xlat21;
  let x_481 : f32 = u_xlat1.x;
  let x_483 : f32 = u_xlat14;
  u_xlat8 = ((abs(x_478) * x_481) + x_483);
  let x_486 : f32 = u_xlat2.x;
  let x_488 : f32 = u_xlat1.x;
  let x_490 : f32 = u_xlat14;
  u_xlat1.x = ((x_486 * x_488) + x_490);
  let x_493 : f32 = u_xlat21;
  let x_496 : f32 = u_xlat1.x;
  u_xlat21 = (abs(x_493) * x_496);
  let x_499 : f32 = u_xlat2.x;
  let x_500 : f32 = u_xlat8;
  let x_502 : f32 = u_xlat21;
  u_xlat21 = ((x_499 * x_500) + x_502);
  let x_504 : f32 = u_xlat21;
  u_xlat21 = (x_504 + 0.00001f);
  let x_507 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_507);
  let x_509 : f32 = u_xlat14;
  let x_510 : f32 = u_xlat14;
  u_xlat14 = (x_509 * x_510);
  let x_512 : f32 = u_xlat9;
  let x_513 : f32 = u_xlat14;
  let x_515 : f32 = u_xlat9;
  u_xlat1.x = ((x_512 * x_513) + -(x_515));
  let x_520 : f32 = u_xlat1.x;
  let x_521 : f32 = u_xlat9;
  u_xlat1.x = ((x_520 * x_521) + 1.0f);
  let x_525 : f32 = u_xlat14;
  u_xlat14 = (x_525 * 0.318309873f);
  let x_529 : f32 = u_xlat1.x;
  let x_531 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_529 * x_531) + 0.0000001f);
  let x_536 : f32 = u_xlat14;
  let x_538 : f32 = u_xlat1.x;
  u_xlat14 = (x_536 / x_538);
  let x_540 : f32 = u_xlat14;
  let x_541 : f32 = u_xlat21;
  u_xlat7.y = (x_540 * x_541);
  let x_544 : vec3<f32> = u_xlat2;
  let x_546 : vec3<f32> = u_xlat7;
  let x_548 : vec2<f32> = (vec2<f32>(x_544.x, x_544.x) * vec2<f32>(x_546.x, x_546.y));
  let x_549 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_548.x, x_548.y, x_549.z);
  let x_552 : f32 = u_xlat7.y;
  u_xlat14 = (x_552 * 3.141592741f);
  let x_555 : f32 = u_xlat14;
  u_xlat14 = max(x_555, 0.0f);
  let x_557 : vec3<f32> = u_xlat5;
  let x_558 : vec3<f32> = u_xlat5;
  u_xlat21 = dot(x_557, x_558);
  let x_561 : f32 = u_xlat21;
  u_xlatb21 = !((x_561 == 0.0f));
  let x_563 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_563);
  let x_565 : f32 = u_xlat21;
  let x_566 : f32 = u_xlat14;
  u_xlat14 = (x_565 * x_566);
  let x_568 : vec3<f32> = u_xlat7;
  let x_570 : vec3<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_568.x, x_568.x, x_568.x) * x_570);
  let x_572 : vec3<f32> = u_xlat3;
  let x_573 : f32 = u_xlat14;
  u_xlat7 = (x_572 * vec3<f32>(x_573, x_573, x_573));
  let x_577 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_577) + 1.0f);
  let x_582 : f32 = u_xlat0.x;
  let x_584 : f32 = u_xlat0.x;
  u_xlat22 = (x_582 * x_584);
  let x_586 : f32 = u_xlat22;
  let x_587 : f32 = u_xlat22;
  u_xlat22 = (x_586 * x_587);
  let x_590 : f32 = u_xlat0.x;
  let x_591 : f32 = u_xlat22;
  u_xlat0.x = (x_590 * x_591);
  let x_594 : vec3<f32> = u_xlat5;
  u_xlat2 = (-(x_594) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_598 : vec3<f32> = u_xlat2;
  let x_599 : vec3<f32> = u_xlat0;
  let x_602 : vec3<f32> = u_xlat5;
  u_xlat2 = ((x_598 * vec3<f32>(x_599.x, x_599.x, x_599.x)) + x_602);
  let x_604 : vec3<f32> = u_xlat7;
  let x_605 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_604 * x_605);
  let x_609 : vec3<f32> = u_xlat6;
  let x_610 : vec3<f32> = u_xlat1;
  let x_612 : vec3<f32> = u_xlat0;
  let x_613 : vec3<f32> = ((x_609 * x_610) + x_612);
  let x_614 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : f32, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

