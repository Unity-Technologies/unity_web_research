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

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat21 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat22 : f32;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb22 : bool;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat23 : f32;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTextureB0 : sampler;

var<private> u_xlat24 : f32;

@group(0) @binding(3) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(6) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat14 : f32;

var<private> u_xlat8 : f32;

var<private> u_xlatb21 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_177 : vec3<f32>;
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
  let x_70 : vec2<f32> = vs_TEXCOORD0;
  let x_71 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_70);
  u_xlat3 = vec3<f32>(x_71.x, x_71.y, x_71.z);
  let x_73 : vec3<f32> = u_xlat3;
  let x_76 : vec4<f32> = x_18.x_Color;
  u_xlat3 = (x_73 * vec3<f32>(x_76.x, x_76.y, x_76.z));
  let x_80 : vec3<f32> = u_xlat3;
  let x_83 : vec4<f32> = vs_COLOR0;
  u_xlat4 = (x_80 * vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_87 : vec3<f32> = vs_TEXCOORD2;
  let x_91 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat5 = (vec3<f32>(x_87.y, x_87.y, x_87.y) * vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_95 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_97 : vec3<f32> = vs_TEXCOORD2;
  let x_100 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_95.x, x_95.y, x_95.z) * vec3<f32>(x_97.x, x_97.x, x_97.x)) + x_100);
  let x_104 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_106 : vec3<f32> = vs_TEXCOORD2;
  let x_109 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_104.x, x_104.y, x_104.z) * vec3<f32>(x_106.z, x_106.z, x_106.z)) + x_109);
  let x_111 : vec3<f32> = u_xlat5;
  let x_114 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat5 = (x_111 + vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_124 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_124 == 1.0f);
  let x_127 : bool = u_xlatb22;
  if (x_127) {
    let x_132 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_132 == 1.0f);
    let x_136 : vec3<f32> = vs_TEXCOORD2;
    let x_140 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_142 : vec3<f32> = (vec3<f32>(x_136.y, x_136.y, x_136.y) * vec3<f32>(x_140.x, x_140.y, x_140.z));
    let x_143 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
    let x_146 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_148 : vec3<f32> = vs_TEXCOORD2;
    let x_151 : vec4<f32> = u_xlat6;
    let x_153 : vec3<f32> = ((vec3<f32>(x_146.x, x_146.y, x_146.z) * vec3<f32>(x_148.x, x_148.x, x_148.x)) + vec3<f32>(x_151.x, x_151.y, x_151.z));
    let x_154 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
    let x_157 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_159 : vec3<f32> = vs_TEXCOORD2;
    let x_162 : vec4<f32> = u_xlat6;
    let x_164 : vec3<f32> = ((vec3<f32>(x_157.x, x_157.y, x_157.z) * vec3<f32>(x_159.z, x_159.z, x_159.z)) + vec3<f32>(x_162.x, x_162.y, x_162.z));
    let x_165 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
    let x_167 : vec4<f32> = u_xlat6;
    let x_170 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_172 : vec3<f32> = (vec3<f32>(x_167.x, x_167.y, x_167.z) + vec3<f32>(x_170.x, x_170.y, x_170.z));
    let x_173 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
    let x_175 : bool = u_xlatb22;
    if (x_175) {
      let x_180 : vec4<f32> = u_xlat6;
      x_177 = vec3<f32>(x_180.x, x_180.y, x_180.z);
    } else {
      let x_183 : vec3<f32> = vs_TEXCOORD2;
      x_177 = x_183;
    }
    let x_184 : vec3<f32> = x_177;
    let x_185 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
    let x_187 : vec4<f32> = u_xlat6;
    let x_191 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_193 : vec3<f32> = (vec3<f32>(x_187.x, x_187.y, x_187.z) + -(x_191));
    let x_194 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
    let x_196 : vec4<f32> = u_xlat6;
    let x_200 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_201 : vec3<f32> = (vec3<f32>(x_196.x, x_196.y, x_196.z) * x_200);
    let x_202 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_202.x, x_201.x, x_201.y, x_201.z);
    let x_205 : f32 = u_xlat6.y;
    u_xlat22 = ((x_205 * 0.25f) + 0.75f);
    let x_213 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_213 * 0.5f) + 0.75f);
    let x_217 : f32 = u_xlat22;
    let x_218 : f32 = u_xlat23;
    u_xlat6.x = max(x_217, x_218);
    let x_229 : vec4<f32> = u_xlat6;
    let x_231 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_229.x, x_229.z, x_229.w));
    u_xlat6 = x_231;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_238 : vec4<f32> = u_xlat6;
  let x_240 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_238, x_240);
  let x_242 : f32 = u_xlat22;
  u_xlat22 = clamp(x_242, 0.0f, 1.0f);
  let x_245 : vec3<f32> = u_xlat5;
  let x_246 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(x_245, x_246);
  let x_253 : f32 = u_xlat23;
  let x_255 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_253, x_253));
  u_xlat23 = x_255.x;
  let x_266 : vec3<f32> = u_xlat5;
  let x_267 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_266);
  u_xlat24 = x_267.w;
  let x_269 : f32 = u_xlat23;
  let x_270 : f32 = u_xlat24;
  u_xlat23 = (x_269 * x_270);
  let x_272 : f32 = u_xlat22;
  let x_273 : f32 = u_xlat23;
  u_xlat22 = (x_272 * x_273);
  let x_275 : f32 = u_xlat22;
  let x_279 : vec4<f32> = x_18.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_275, x_275, x_275) * vec3<f32>(x_279.x, x_279.y, x_279.z));
  let x_283 : vec3<f32> = vs_TEXCOORD1;
  let x_284 : vec3<f32> = vs_TEXCOORD1;
  u_xlat22 = dot(x_283, x_284);
  let x_286 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_286);
  let x_288 : f32 = u_xlat22;
  let x_290 : vec3<f32> = vs_TEXCOORD1;
  let x_291 : vec3<f32> = (vec3<f32>(x_288, x_288, x_288) * x_290);
  let x_292 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_294 : vec3<f32> = u_xlat3;
  let x_295 : vec4<f32> = vs_COLOR0;
  u_xlat3 = ((x_294 * vec3<f32>(x_295.x, x_295.y, x_295.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_303 : f32 = x_18.x_Metallic;
  let x_305 : f32 = x_18.x_Metallic;
  let x_307 : f32 = x_18.x_Metallic;
  let x_308 : vec3<f32> = vec3<f32>(x_303, x_305, x_307);
  let x_313 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_308.x, x_308.y, x_308.z) * x_313) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_319 : f32 = x_18.x_Metallic;
  u_xlat22 = ((-(x_319) * 0.959999979f) + 0.959999979f);
  let x_324 : f32 = u_xlat22;
  let x_326 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_324, x_324, x_324) * x_326);
  let x_330 : f32 = x_18.x_Glossiness;
  u_xlat22 = (-(x_330) + 1.0f);
  let x_333 : vec3<f32> = u_xlat0;
  let x_334 : f32 = u_xlat21;
  let x_337 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_333 * vec3<f32>(x_334, x_334, x_334)) + x_337);
  let x_339 : vec3<f32> = u_xlat0;
  let x_340 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_339, x_340);
  let x_342 : f32 = u_xlat21;
  u_xlat21 = max(x_342, 0.001f);
  let x_345 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_345);
  let x_347 : f32 = u_xlat21;
  let x_349 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_347, x_347, x_347) * x_349);
  let x_351 : vec4<f32> = u_xlat6;
  let x_353 : vec3<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_351.x, x_351.y, x_351.z), x_353);
  let x_355 : vec4<f32> = u_xlat6;
  let x_357 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(vec3<f32>(x_355.x, x_355.y, x_355.z), x_357);
  let x_361 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_361, 0.0f, 1.0f);
  let x_365 : vec4<f32> = u_xlat6;
  let x_367 : vec3<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_365.x, x_365.y, x_365.z), x_367);
  let x_369 : f32 = u_xlat9;
  u_xlat9 = clamp(x_369, 0.0f, 1.0f);
  let x_371 : vec3<f32> = u_xlat1;
  let x_372 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_371, x_372);
  let x_376 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_376, 0.0f, 1.0f);
  let x_381 : f32 = u_xlat0.x;
  let x_383 : f32 = u_xlat0.x;
  u_xlat7.x = (x_381 * x_383);
  let x_386 : vec3<f32> = u_xlat7;
  let x_388 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_386.x, x_386.x), vec2<f32>(x_388, x_388));
  let x_393 : f32 = u_xlat7.x;
  u_xlat7.x = (x_393 + -0.5f);
  let x_399 : f32 = u_xlat2.x;
  u_xlat14 = (-(x_399) + 1.0f);
  let x_402 : f32 = u_xlat14;
  let x_403 : f32 = u_xlat14;
  u_xlat1.x = (x_402 * x_403);
  let x_407 : f32 = u_xlat1.x;
  let x_409 : f32 = u_xlat1.x;
  u_xlat1.x = (x_407 * x_409);
  let x_412 : f32 = u_xlat14;
  let x_414 : f32 = u_xlat1.x;
  u_xlat14 = (x_412 * x_414);
  let x_417 : f32 = u_xlat7.x;
  let x_418 : f32 = u_xlat14;
  u_xlat14 = ((x_417 * x_418) + 1.0f);
  let x_421 : f32 = u_xlat21;
  u_xlat1.x = (-(abs(x_421)) + 1.0f);
  let x_428 : f32 = u_xlat1.x;
  let x_430 : f32 = u_xlat1.x;
  u_xlat8 = (x_428 * x_430);
  let x_432 : f32 = u_xlat8;
  let x_433 : f32 = u_xlat8;
  u_xlat8 = (x_432 * x_433);
  let x_436 : f32 = u_xlat1.x;
  let x_437 : f32 = u_xlat8;
  u_xlat1.x = (x_436 * x_437);
  let x_441 : f32 = u_xlat7.x;
  let x_443 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_441 * x_443) + 1.0f);
  let x_448 : f32 = u_xlat7.x;
  let x_449 : f32 = u_xlat14;
  u_xlat7.x = (x_448 * x_449);
  let x_452 : f32 = u_xlat22;
  let x_453 : f32 = u_xlat22;
  u_xlat14 = (x_452 * x_453);
  let x_455 : f32 = u_xlat14;
  u_xlat14 = max(x_455, 0.002f);
  let x_458 : f32 = u_xlat14;
  u_xlat1.x = (-(x_458) + 1.0f);
  let x_462 : f32 = u_xlat21;
  let x_465 : f32 = u_xlat1.x;
  let x_467 : f32 = u_xlat14;
  u_xlat8 = ((abs(x_462) * x_465) + x_467);
  let x_470 : f32 = u_xlat2.x;
  let x_472 : f32 = u_xlat1.x;
  let x_474 : f32 = u_xlat14;
  u_xlat1.x = ((x_470 * x_472) + x_474);
  let x_477 : f32 = u_xlat21;
  let x_480 : f32 = u_xlat1.x;
  u_xlat21 = (abs(x_477) * x_480);
  let x_483 : f32 = u_xlat2.x;
  let x_484 : f32 = u_xlat8;
  let x_486 : f32 = u_xlat21;
  u_xlat21 = ((x_483 * x_484) + x_486);
  let x_488 : f32 = u_xlat21;
  u_xlat21 = (x_488 + 0.00001f);
  let x_491 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_491);
  let x_493 : f32 = u_xlat14;
  let x_494 : f32 = u_xlat14;
  u_xlat14 = (x_493 * x_494);
  let x_496 : f32 = u_xlat9;
  let x_497 : f32 = u_xlat14;
  let x_499 : f32 = u_xlat9;
  u_xlat1.x = ((x_496 * x_497) + -(x_499));
  let x_504 : f32 = u_xlat1.x;
  let x_505 : f32 = u_xlat9;
  u_xlat1.x = ((x_504 * x_505) + 1.0f);
  let x_509 : f32 = u_xlat14;
  u_xlat14 = (x_509 * 0.318309873f);
  let x_513 : f32 = u_xlat1.x;
  let x_515 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_513 * x_515) + 0.0000001f);
  let x_520 : f32 = u_xlat14;
  let x_522 : f32 = u_xlat1.x;
  u_xlat14 = (x_520 / x_522);
  let x_524 : f32 = u_xlat14;
  let x_525 : f32 = u_xlat21;
  u_xlat7.y = (x_524 * x_525);
  let x_528 : vec3<f32> = u_xlat2;
  let x_530 : vec3<f32> = u_xlat7;
  let x_532 : vec2<f32> = (vec2<f32>(x_528.x, x_528.x) * vec2<f32>(x_530.x, x_530.y));
  let x_533 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_532.x, x_532.y, x_533.z);
  let x_536 : f32 = u_xlat7.y;
  u_xlat14 = (x_536 * 3.141592741f);
  let x_539 : f32 = u_xlat14;
  u_xlat14 = max(x_539, 0.0f);
  let x_541 : vec3<f32> = u_xlat3;
  let x_542 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(x_541, x_542);
  let x_545 : f32 = u_xlat21;
  u_xlatb21 = !((x_545 == 0.0f));
  let x_547 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_547);
  let x_549 : f32 = u_xlat21;
  let x_550 : f32 = u_xlat14;
  u_xlat14 = (x_549 * x_550);
  let x_552 : vec3<f32> = u_xlat7;
  let x_554 : vec3<f32> = u_xlat5;
  u_xlat1 = (vec3<f32>(x_552.x, x_552.x, x_552.x) * x_554);
  let x_556 : vec3<f32> = u_xlat5;
  let x_557 : f32 = u_xlat14;
  u_xlat7 = (x_556 * vec3<f32>(x_557, x_557, x_557));
  let x_561 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_561) + 1.0f);
  let x_566 : f32 = u_xlat0.x;
  let x_568 : f32 = u_xlat0.x;
  u_xlat22 = (x_566 * x_568);
  let x_570 : f32 = u_xlat22;
  let x_571 : f32 = u_xlat22;
  u_xlat22 = (x_570 * x_571);
  let x_574 : f32 = u_xlat0.x;
  let x_575 : f32 = u_xlat22;
  u_xlat0.x = (x_574 * x_575);
  let x_578 : vec3<f32> = u_xlat3;
  u_xlat2 = (-(x_578) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_582 : vec3<f32> = u_xlat2;
  let x_583 : vec3<f32> = u_xlat0;
  let x_586 : vec3<f32> = u_xlat3;
  u_xlat2 = ((x_582 * vec3<f32>(x_583.x, x_583.x, x_583.x)) + x_586);
  let x_588 : vec3<f32> = u_xlat7;
  let x_589 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_588 * x_589);
  let x_593 : vec3<f32> = u_xlat4;
  let x_594 : vec3<f32> = u_xlat1;
  let x_596 : vec3<f32> = u_xlat0;
  let x_597 : vec3<f32> = ((x_593 * x_594) + x_596);
  let x_598 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD2_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

