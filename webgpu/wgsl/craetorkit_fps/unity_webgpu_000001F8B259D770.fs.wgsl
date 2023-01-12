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

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(5) var sampler_LightTexture0 : sampler;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(6) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat23 : f32;
  var u_xlatb22 : bool;
  var u_xlat4 : vec4<f32>;
  var x_203 : vec3<f32>;
  var u_xlatb23 : bool;
  var u_xlat24 : f32;
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
  let x_70 : f32 = u_xlat22;
  let x_76 : vec2<f32> = vs_TEXCOORD0;
  let x_77 : vec2<f32> = (-(vec2<f32>(x_70, x_70)) + x_76);
  let x_78 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_77.x, x_77.y, x_78.z, x_78.w);
  let x_90 : vec4<f32> = u_xlat3;
  let x_92 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_90.x, x_90.y));
  u_xlat22 = x_92.x;
  let x_100 : vec2<f32> = vs_TEXCOORD0;
  let x_101 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, x_100);
  u_xlat23 = x_101.z;
  let x_104 : f32 = u_xlat22;
  u_xlat22 = ((x_104 * -2.0f) + 1.0f);
  let x_108 : f32 = u_xlat23;
  let x_110 : f32 = u_xlat22;
  u_xlat22 = (-(x_108) + x_110);
  let x_115 : f32 = u_xlat22;
  u_xlatb22 = (x_115 < 0.0f);
  let x_117 : bool = u_xlatb22;
  if (((select(0i, 1i, x_117) * -1i) != 0i)) {
    discard;
  }
  let x_125 : vec3<f32> = vs_TEXCOORD2;
  let x_129 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat3 = (vec4<f32>(x_125.y, x_125.y, x_125.y, x_125.y) * x_129);
  let x_132 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_133 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_132 * vec4<f32>(x_133.x, x_133.x, x_133.x, x_133.x)) + x_136);
  let x_140 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_141 : vec3<f32> = vs_TEXCOORD2;
  let x_144 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_140 * vec4<f32>(x_141.z, x_141.z, x_141.z, x_141.z)) + x_144);
  let x_146 : vec4<f32> = u_xlat3;
  let x_149 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat3 = (x_146 + x_149);
  let x_153 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_153 == 1.0f);
  let x_155 : bool = u_xlatb22;
  if (x_155) {
    let x_160 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_160 == 1.0f);
    let x_163 : vec3<f32> = vs_TEXCOORD2;
    let x_167 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_169 : vec3<f32> = (vec3<f32>(x_163.y, x_163.y, x_163.y) * vec3<f32>(x_167.x, x_167.y, x_167.z));
    let x_170 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
    let x_173 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_175 : vec3<f32> = vs_TEXCOORD2;
    let x_178 : vec4<f32> = u_xlat4;
    let x_180 : vec3<f32> = ((vec3<f32>(x_173.x, x_173.y, x_173.z) * vec3<f32>(x_175.x, x_175.x, x_175.x)) + vec3<f32>(x_178.x, x_178.y, x_178.z));
    let x_181 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
    let x_184 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_186 : vec3<f32> = vs_TEXCOORD2;
    let x_189 : vec4<f32> = u_xlat4;
    let x_191 : vec3<f32> = ((vec3<f32>(x_184.x, x_184.y, x_184.z) * vec3<f32>(x_186.z, x_186.z, x_186.z)) + vec3<f32>(x_189.x, x_189.y, x_189.z));
    let x_192 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
    let x_194 : vec4<f32> = u_xlat4;
    let x_197 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_199 : vec3<f32> = (vec3<f32>(x_194.x, x_194.y, x_194.z) + vec3<f32>(x_197.x, x_197.y, x_197.z));
    let x_200 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
    let x_202 : bool = u_xlatb22;
    if (x_202) {
      let x_206 : vec4<f32> = u_xlat4;
      x_203 = vec3<f32>(x_206.x, x_206.y, x_206.z);
    } else {
      let x_209 : vec3<f32> = vs_TEXCOORD2;
      x_203 = x_209;
    }
    let x_210 : vec3<f32> = x_203;
    let x_211 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
    let x_213 : vec4<f32> = u_xlat4;
    let x_217 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_219 : vec3<f32> = (vec3<f32>(x_213.x, x_213.y, x_213.z) + -(x_217));
    let x_220 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
    let x_222 : vec4<f32> = u_xlat4;
    let x_226 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_227 : vec3<f32> = (vec3<f32>(x_222.x, x_222.y, x_222.z) * x_226);
    let x_228 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_228.x, x_227.x, x_227.y, x_227.z);
    let x_231 : f32 = u_xlat4.y;
    u_xlat22 = ((x_231 * 0.25f) + 0.75f);
    let x_237 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_237 * 0.5f) + 0.75f);
    let x_241 : f32 = u_xlat22;
    let x_242 : f32 = u_xlat23;
    u_xlat4.x = max(x_241, x_242);
    let x_253 : vec4<f32> = u_xlat4;
    let x_255 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_253.x, x_253.z, x_253.w));
    u_xlat4 = x_255;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_262 : vec4<f32> = u_xlat4;
  let x_264 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_262, x_264);
  let x_266 : f32 = u_xlat22;
  u_xlat22 = clamp(x_266, 0.0f, 1.0f);
  let x_270 : f32 = u_xlat3.z;
  u_xlatb23 = (0.0f < x_270);
  let x_272 : bool = u_xlatb23;
  u_xlat23 = select(0.0f, 1.0f, x_272);
  let x_274 : vec4<f32> = u_xlat3;
  let x_276 : vec4<f32> = u_xlat3;
  let x_278 : vec2<f32> = (vec2<f32>(x_274.x, x_274.y) / vec2<f32>(x_276.w, x_276.w));
  let x_279 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_278.x, x_278.y, x_279.z, x_279.w);
  let x_281 : vec4<f32> = u_xlat4;
  let x_284 : vec2<f32> = (vec2<f32>(x_281.x, x_281.y) + vec2<f32>(0.5f, 0.5f));
  let x_285 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_284.x, x_284.y, x_285.z, x_285.w);
  let x_293 : vec4<f32> = u_xlat4;
  let x_295 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_293.x, x_293.y));
  u_xlat24 = x_295.w;
  let x_297 : f32 = u_xlat23;
  let x_298 : f32 = u_xlat24;
  u_xlat23 = (x_297 * x_298);
  let x_300 : vec4<f32> = u_xlat3;
  let x_302 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_300.x, x_300.y, x_300.z), vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_311 : vec4<f32> = u_xlat3;
  let x_313 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_311.x, x_311.x));
  u_xlat3.x = x_313.x;
  let x_316 : f32 = u_xlat23;
  let x_318 : f32 = u_xlat3.x;
  u_xlat23 = (x_316 * x_318);
  let x_320 : f32 = u_xlat22;
  let x_321 : f32 = u_xlat23;
  u_xlat22 = (x_320 * x_321);
  let x_323 : f32 = u_xlat22;
  let x_327 : vec4<f32> = x_18.x_LightColor0;
  let x_329 : vec3<f32> = (vec3<f32>(x_323, x_323, x_323) * vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_333 : vec3<f32> = vs_TEXCOORD1;
  let x_334 : vec3<f32> = vs_TEXCOORD1;
  u_xlat22 = dot(x_333, x_334);
  let x_336 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_336);
  let x_338 : f32 = u_xlat22;
  let x_340 : vec3<f32> = vs_TEXCOORD1;
  let x_341 : vec3<f32> = (vec3<f32>(x_338, x_338, x_338) * x_340);
  let x_342 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_347 : vec4<f32> = x_18.x_Color;
  u_xlat5 = (vec3<f32>(x_347.x, x_347.y, x_347.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_354 : f32 = x_18.x_Metallic;
  let x_356 : f32 = x_18.x_Metallic;
  let x_358 : f32 = x_18.x_Metallic;
  let x_359 : vec3<f32> = vec3<f32>(x_354, x_356, x_358);
  let x_364 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_359.x, x_359.y, x_359.z) * x_364) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_370 : f32 = x_18.x_Metallic;
  u_xlat22 = ((-(x_370) * 0.959999979f) + 0.959999979f);
  let x_376 : f32 = u_xlat22;
  let x_379 : vec4<f32> = x_18.x_Color;
  u_xlat6 = (vec3<f32>(x_376, x_376, x_376) * vec3<f32>(x_379.x, x_379.y, x_379.z));
  let x_384 : f32 = x_18.x_Glossiness;
  u_xlat22 = (-(x_384) + 1.0f);
  let x_387 : vec3<f32> = u_xlat0;
  let x_388 : f32 = u_xlat21;
  let x_391 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_387 * vec3<f32>(x_388, x_388, x_388)) + x_391);
  let x_393 : vec3<f32> = u_xlat0;
  let x_394 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_393, x_394);
  let x_396 : f32 = u_xlat21;
  u_xlat21 = max(x_396, 0.001f);
  let x_399 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_399);
  let x_401 : f32 = u_xlat21;
  let x_403 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_401, x_401, x_401) * x_403);
  let x_405 : vec4<f32> = u_xlat4;
  let x_407 : vec3<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_405.x, x_405.y, x_405.z), x_407);
  let x_409 : vec4<f32> = u_xlat4;
  let x_411 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(vec3<f32>(x_409.x, x_409.y, x_409.z), x_411);
  let x_415 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_415, 0.0f, 1.0f);
  let x_419 : vec4<f32> = u_xlat4;
  let x_421 : vec3<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_419.x, x_419.y, x_419.z), x_421);
  let x_423 : f32 = u_xlat9;
  u_xlat9 = clamp(x_423, 0.0f, 1.0f);
  let x_425 : vec3<f32> = u_xlat1;
  let x_426 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_425, x_426);
  let x_430 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_430, 0.0f, 1.0f);
  let x_435 : f32 = u_xlat0.x;
  let x_437 : f32 = u_xlat0.x;
  u_xlat7.x = (x_435 * x_437);
  let x_440 : vec3<f32> = u_xlat7;
  let x_442 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_440.x, x_440.x), vec2<f32>(x_442, x_442));
  let x_447 : f32 = u_xlat7.x;
  u_xlat7.x = (x_447 + -0.5f);
  let x_453 : f32 = u_xlat2.x;
  u_xlat14 = (-(x_453) + 1.0f);
  let x_456 : f32 = u_xlat14;
  let x_457 : f32 = u_xlat14;
  u_xlat1.x = (x_456 * x_457);
  let x_461 : f32 = u_xlat1.x;
  let x_463 : f32 = u_xlat1.x;
  u_xlat1.x = (x_461 * x_463);
  let x_466 : f32 = u_xlat14;
  let x_468 : f32 = u_xlat1.x;
  u_xlat14 = (x_466 * x_468);
  let x_471 : f32 = u_xlat7.x;
  let x_472 : f32 = u_xlat14;
  u_xlat14 = ((x_471 * x_472) + 1.0f);
  let x_475 : f32 = u_xlat21;
  u_xlat1.x = (-(abs(x_475)) + 1.0f);
  let x_482 : f32 = u_xlat1.x;
  let x_484 : f32 = u_xlat1.x;
  u_xlat8 = (x_482 * x_484);
  let x_486 : f32 = u_xlat8;
  let x_487 : f32 = u_xlat8;
  u_xlat8 = (x_486 * x_487);
  let x_490 : f32 = u_xlat1.x;
  let x_491 : f32 = u_xlat8;
  u_xlat1.x = (x_490 * x_491);
  let x_495 : f32 = u_xlat7.x;
  let x_497 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_495 * x_497) + 1.0f);
  let x_502 : f32 = u_xlat7.x;
  let x_503 : f32 = u_xlat14;
  u_xlat7.x = (x_502 * x_503);
  let x_506 : f32 = u_xlat22;
  let x_507 : f32 = u_xlat22;
  u_xlat14 = (x_506 * x_507);
  let x_509 : f32 = u_xlat14;
  u_xlat14 = max(x_509, 0.002f);
  let x_512 : f32 = u_xlat14;
  u_xlat1.x = (-(x_512) + 1.0f);
  let x_516 : f32 = u_xlat21;
  let x_519 : f32 = u_xlat1.x;
  let x_521 : f32 = u_xlat14;
  u_xlat8 = ((abs(x_516) * x_519) + x_521);
  let x_524 : f32 = u_xlat2.x;
  let x_526 : f32 = u_xlat1.x;
  let x_528 : f32 = u_xlat14;
  u_xlat1.x = ((x_524 * x_526) + x_528);
  let x_531 : f32 = u_xlat21;
  let x_534 : f32 = u_xlat1.x;
  u_xlat21 = (abs(x_531) * x_534);
  let x_537 : f32 = u_xlat2.x;
  let x_538 : f32 = u_xlat8;
  let x_540 : f32 = u_xlat21;
  u_xlat21 = ((x_537 * x_538) + x_540);
  let x_542 : f32 = u_xlat21;
  u_xlat21 = (x_542 + 0.00001f);
  let x_545 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_545);
  let x_547 : f32 = u_xlat14;
  let x_548 : f32 = u_xlat14;
  u_xlat14 = (x_547 * x_548);
  let x_550 : f32 = u_xlat9;
  let x_551 : f32 = u_xlat14;
  let x_553 : f32 = u_xlat9;
  u_xlat1.x = ((x_550 * x_551) + -(x_553));
  let x_558 : f32 = u_xlat1.x;
  let x_559 : f32 = u_xlat9;
  u_xlat1.x = ((x_558 * x_559) + 1.0f);
  let x_563 : f32 = u_xlat14;
  u_xlat14 = (x_563 * 0.318309873f);
  let x_567 : f32 = u_xlat1.x;
  let x_569 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_567 * x_569) + 0.0000001f);
  let x_574 : f32 = u_xlat14;
  let x_576 : f32 = u_xlat1.x;
  u_xlat14 = (x_574 / x_576);
  let x_578 : f32 = u_xlat14;
  let x_579 : f32 = u_xlat21;
  u_xlat7.y = (x_578 * x_579);
  let x_582 : vec3<f32> = u_xlat2;
  let x_584 : vec3<f32> = u_xlat7;
  let x_586 : vec2<f32> = (vec2<f32>(x_582.x, x_582.x) * vec2<f32>(x_584.x, x_584.y));
  let x_587 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_586.x, x_586.y, x_587.z);
  let x_590 : f32 = u_xlat7.y;
  u_xlat14 = (x_590 * 3.141592741f);
  let x_593 : f32 = u_xlat14;
  u_xlat14 = max(x_593, 0.0f);
  let x_595 : vec3<f32> = u_xlat5;
  let x_596 : vec3<f32> = u_xlat5;
  u_xlat21 = dot(x_595, x_596);
  let x_599 : f32 = u_xlat21;
  u_xlatb21 = !((x_599 == 0.0f));
  let x_601 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_601);
  let x_603 : f32 = u_xlat21;
  let x_604 : f32 = u_xlat14;
  u_xlat14 = (x_603 * x_604);
  let x_606 : vec3<f32> = u_xlat7;
  let x_608 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_606.x, x_606.x, x_606.x) * vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_611 : vec4<f32> = u_xlat3;
  let x_613 : f32 = u_xlat14;
  u_xlat7 = (vec3<f32>(x_611.x, x_611.y, x_611.z) * vec3<f32>(x_613, x_613, x_613));
  let x_617 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_617) + 1.0f);
  let x_622 : f32 = u_xlat0.x;
  let x_624 : f32 = u_xlat0.x;
  u_xlat22 = (x_622 * x_624);
  let x_626 : f32 = u_xlat22;
  let x_627 : f32 = u_xlat22;
  u_xlat22 = (x_626 * x_627);
  let x_630 : f32 = u_xlat0.x;
  let x_631 : f32 = u_xlat22;
  u_xlat0.x = (x_630 * x_631);
  let x_634 : vec3<f32> = u_xlat5;
  u_xlat2 = (-(x_634) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_638 : vec3<f32> = u_xlat2;
  let x_639 : vec3<f32> = u_xlat0;
  let x_642 : vec3<f32> = u_xlat5;
  u_xlat2 = ((x_638 * vec3<f32>(x_639.x, x_639.x, x_639.x)) + x_642);
  let x_644 : vec3<f32> = u_xlat7;
  let x_645 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_644 * x_645);
  let x_649 : vec3<f32> = u_xlat6;
  let x_650 : vec3<f32> = u_xlat1;
  let x_652 : vec3<f32> = u_xlat0;
  let x_653 : vec3<f32> = ((x_649 * x_650) + x_652);
  let x_654 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
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

