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

@group(0) @binding(7) var sampler_Gradient : sampler;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(1) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(6) var sampler_LightTextureB0 : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(5) var sampler_LightTexture0 : sampler;

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
  let x_282 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_280, x_280));
  u_xlat23 = x_282.x;
  let x_292 : vec3<f32> = u_xlat3;
  let x_293 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_292);
  u_xlat3.x = x_293.w;
  let x_296 : f32 = u_xlat23;
  let x_298 : f32 = u_xlat3.x;
  u_xlat23 = (x_296 * x_298);
  let x_300 : f32 = u_xlat22;
  let x_301 : f32 = u_xlat23;
  u_xlat22 = (x_300 * x_301);
  let x_303 : f32 = u_xlat22;
  let x_307 : vec4<f32> = x_18.x_LightColor0;
  u_xlat3 = (vec3<f32>(x_303, x_303, x_303) * vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_311 : vec3<f32> = vs_TEXCOORD1;
  let x_312 : vec3<f32> = vs_TEXCOORD1;
  u_xlat22 = dot(x_311, x_312);
  let x_314 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_314);
  let x_316 : f32 = u_xlat22;
  let x_318 : vec3<f32> = vs_TEXCOORD1;
  let x_319 : vec3<f32> = (vec3<f32>(x_316, x_316, x_316) * x_318);
  let x_320 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_325 : vec4<f32> = x_18.x_Color;
  u_xlat5 = (vec3<f32>(x_325.x, x_325.y, x_325.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_332 : f32 = x_18.x_Metallic;
  let x_334 : f32 = x_18.x_Metallic;
  let x_336 : f32 = x_18.x_Metallic;
  let x_337 : vec3<f32> = vec3<f32>(x_332, x_334, x_336);
  let x_342 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_337.x, x_337.y, x_337.z) * x_342) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_348 : f32 = x_18.x_Metallic;
  u_xlat22 = ((-(x_348) * 0.959999979f) + 0.959999979f);
  let x_354 : f32 = u_xlat22;
  let x_357 : vec4<f32> = x_18.x_Color;
  u_xlat6 = (vec3<f32>(x_354, x_354, x_354) * vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_362 : f32 = x_18.x_Glossiness;
  u_xlat22 = (-(x_362) + 1.0f);
  let x_365 : vec3<f32> = u_xlat0;
  let x_366 : f32 = u_xlat21;
  let x_369 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_365 * vec3<f32>(x_366, x_366, x_366)) + x_369);
  let x_371 : vec3<f32> = u_xlat0;
  let x_372 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_371, x_372);
  let x_374 : f32 = u_xlat21;
  u_xlat21 = max(x_374, 0.001f);
  let x_377 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_377);
  let x_379 : f32 = u_xlat21;
  let x_381 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_379, x_379, x_379) * x_381);
  let x_383 : vec4<f32> = u_xlat4;
  let x_385 : vec3<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_383.x, x_383.y, x_383.z), x_385);
  let x_387 : vec4<f32> = u_xlat4;
  let x_389 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(vec3<f32>(x_387.x, x_387.y, x_387.z), x_389);
  let x_393 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_393, 0.0f, 1.0f);
  let x_397 : vec4<f32> = u_xlat4;
  let x_399 : vec3<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_397.x, x_397.y, x_397.z), x_399);
  let x_401 : f32 = u_xlat9;
  u_xlat9 = clamp(x_401, 0.0f, 1.0f);
  let x_403 : vec3<f32> = u_xlat1;
  let x_404 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_403, x_404);
  let x_408 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_408, 0.0f, 1.0f);
  let x_413 : f32 = u_xlat0.x;
  let x_415 : f32 = u_xlat0.x;
  u_xlat7.x = (x_413 * x_415);
  let x_418 : vec3<f32> = u_xlat7;
  let x_420 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_418.x, x_418.x), vec2<f32>(x_420, x_420));
  let x_425 : f32 = u_xlat7.x;
  u_xlat7.x = (x_425 + -0.5f);
  let x_431 : f32 = u_xlat2.x;
  u_xlat14 = (-(x_431) + 1.0f);
  let x_434 : f32 = u_xlat14;
  let x_435 : f32 = u_xlat14;
  u_xlat1.x = (x_434 * x_435);
  let x_439 : f32 = u_xlat1.x;
  let x_441 : f32 = u_xlat1.x;
  u_xlat1.x = (x_439 * x_441);
  let x_444 : f32 = u_xlat14;
  let x_446 : f32 = u_xlat1.x;
  u_xlat14 = (x_444 * x_446);
  let x_449 : f32 = u_xlat7.x;
  let x_450 : f32 = u_xlat14;
  u_xlat14 = ((x_449 * x_450) + 1.0f);
  let x_453 : f32 = u_xlat21;
  u_xlat1.x = (-(abs(x_453)) + 1.0f);
  let x_460 : f32 = u_xlat1.x;
  let x_462 : f32 = u_xlat1.x;
  u_xlat8 = (x_460 * x_462);
  let x_464 : f32 = u_xlat8;
  let x_465 : f32 = u_xlat8;
  u_xlat8 = (x_464 * x_465);
  let x_468 : f32 = u_xlat1.x;
  let x_469 : f32 = u_xlat8;
  u_xlat1.x = (x_468 * x_469);
  let x_473 : f32 = u_xlat7.x;
  let x_475 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_473 * x_475) + 1.0f);
  let x_480 : f32 = u_xlat7.x;
  let x_481 : f32 = u_xlat14;
  u_xlat7.x = (x_480 * x_481);
  let x_484 : f32 = u_xlat22;
  let x_485 : f32 = u_xlat22;
  u_xlat14 = (x_484 * x_485);
  let x_487 : f32 = u_xlat14;
  u_xlat14 = max(x_487, 0.002f);
  let x_490 : f32 = u_xlat14;
  u_xlat1.x = (-(x_490) + 1.0f);
  let x_494 : f32 = u_xlat21;
  let x_497 : f32 = u_xlat1.x;
  let x_499 : f32 = u_xlat14;
  u_xlat8 = ((abs(x_494) * x_497) + x_499);
  let x_502 : f32 = u_xlat2.x;
  let x_504 : f32 = u_xlat1.x;
  let x_506 : f32 = u_xlat14;
  u_xlat1.x = ((x_502 * x_504) + x_506);
  let x_509 : f32 = u_xlat21;
  let x_512 : f32 = u_xlat1.x;
  u_xlat21 = (abs(x_509) * x_512);
  let x_515 : f32 = u_xlat2.x;
  let x_516 : f32 = u_xlat8;
  let x_518 : f32 = u_xlat21;
  u_xlat21 = ((x_515 * x_516) + x_518);
  let x_520 : f32 = u_xlat21;
  u_xlat21 = (x_520 + 0.00001f);
  let x_523 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_523);
  let x_525 : f32 = u_xlat14;
  let x_526 : f32 = u_xlat14;
  u_xlat14 = (x_525 * x_526);
  let x_528 : f32 = u_xlat9;
  let x_529 : f32 = u_xlat14;
  let x_531 : f32 = u_xlat9;
  u_xlat1.x = ((x_528 * x_529) + -(x_531));
  let x_536 : f32 = u_xlat1.x;
  let x_537 : f32 = u_xlat9;
  u_xlat1.x = ((x_536 * x_537) + 1.0f);
  let x_541 : f32 = u_xlat14;
  u_xlat14 = (x_541 * 0.318309873f);
  let x_545 : f32 = u_xlat1.x;
  let x_547 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_545 * x_547) + 0.0000001f);
  let x_552 : f32 = u_xlat14;
  let x_554 : f32 = u_xlat1.x;
  u_xlat14 = (x_552 / x_554);
  let x_556 : f32 = u_xlat14;
  let x_557 : f32 = u_xlat21;
  u_xlat7.y = (x_556 * x_557);
  let x_560 : vec3<f32> = u_xlat2;
  let x_562 : vec3<f32> = u_xlat7;
  let x_564 : vec2<f32> = (vec2<f32>(x_560.x, x_560.x) * vec2<f32>(x_562.x, x_562.y));
  let x_565 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_564.x, x_564.y, x_565.z);
  let x_568 : f32 = u_xlat7.y;
  u_xlat14 = (x_568 * 3.141592741f);
  let x_571 : f32 = u_xlat14;
  u_xlat14 = max(x_571, 0.0f);
  let x_573 : vec3<f32> = u_xlat5;
  let x_574 : vec3<f32> = u_xlat5;
  u_xlat21 = dot(x_573, x_574);
  let x_577 : f32 = u_xlat21;
  u_xlatb21 = !((x_577 == 0.0f));
  let x_579 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_579);
  let x_581 : f32 = u_xlat21;
  let x_582 : f32 = u_xlat14;
  u_xlat14 = (x_581 * x_582);
  let x_584 : vec3<f32> = u_xlat7;
  let x_586 : vec3<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_584.x, x_584.x, x_584.x) * x_586);
  let x_588 : vec3<f32> = u_xlat3;
  let x_589 : f32 = u_xlat14;
  u_xlat7 = (x_588 * vec3<f32>(x_589, x_589, x_589));
  let x_593 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_593) + 1.0f);
  let x_598 : f32 = u_xlat0.x;
  let x_600 : f32 = u_xlat0.x;
  u_xlat22 = (x_598 * x_600);
  let x_602 : f32 = u_xlat22;
  let x_603 : f32 = u_xlat22;
  u_xlat22 = (x_602 * x_603);
  let x_606 : f32 = u_xlat0.x;
  let x_607 : f32 = u_xlat22;
  u_xlat0.x = (x_606 * x_607);
  let x_610 : vec3<f32> = u_xlat5;
  u_xlat2 = (-(x_610) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_614 : vec3<f32> = u_xlat2;
  let x_615 : vec3<f32> = u_xlat0;
  let x_618 : vec3<f32> = u_xlat5;
  u_xlat2 = ((x_614 * vec3<f32>(x_615.x, x_615.x, x_615.x)) + x_618);
  let x_620 : vec3<f32> = u_xlat7;
  let x_621 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_620 * x_621);
  let x_625 : vec3<f32> = u_xlat6;
  let x_626 : vec3<f32> = u_xlat1;
  let x_628 : vec3<f32> = u_xlat0;
  let x_629 : vec3<f32> = ((x_625 * x_626) + x_628);
  let x_630 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
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

