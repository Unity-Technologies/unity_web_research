struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_FogParams : vec4<f32>,
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
  x_NormalSacle : f32,
  x_MovementSpeed : f32,
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_Normal : texture_2d<f32>;

@group(0) @binding(7) var sampler_Normal : sampler;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(5) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD8 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlatb25 : bool;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var x_274 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlat10 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat9 : f32;
  var u_xlatb24 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat24;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_39 : vec3<f32> = vs_TEXCOORD4;
  let x_44 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_39) + x_44);
  let x_47 : vec3<f32> = u_xlat2;
  let x_48 : vec3<f32> = u_xlat2;
  u_xlat25 = dot(x_47, x_48);
  let x_50 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_50);
  let x_52 : f32 = u_xlat25;
  let x_54 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_52, x_52, x_52) * x_54);
  let x_71 : vec4<f32> = vs_TEXCOORD0;
  let x_73 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_71.x, x_71.y));
  u_xlat3 = x_73;
  let x_74 : vec4<f32> = u_xlat3;
  let x_78 : vec4<f32> = x_18.x_Color;
  let x_80 : vec3<f32> = (vec3<f32>(x_74.x, x_74.y, x_74.z) * vec3<f32>(x_78.x, x_78.y, x_78.z));
  let x_81 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_80.x, x_80.y, x_80.z, x_81.w);
  let x_84 : vec4<f32> = u_xlat3;
  let x_87 : vec4<f32> = vs_COLOR0;
  u_xlat4 = (vec3<f32>(x_84.x, x_84.y, x_84.z) * vec3<f32>(x_87.x, x_87.y, x_87.z));
  let x_96 : f32 = x_18.x_Time.x;
  let x_99 : f32 = x_18.x_MovementSpeed;
  let x_104 : f32 = vs_TEXCOORD0.z;
  u_xlat5.x = ((x_96 * x_99) + x_104);
  let x_108 : f32 = x_18.x_Time.x;
  let x_111 : f32 = x_18.x_MovementSpeed;
  let x_115 : f32 = vs_TEXCOORD0.w;
  u_xlat5.y = ((-(x_108) * x_111) + x_115);
  let x_124 : vec3<f32> = u_xlat5;
  let x_126 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_124.x, x_124.y));
  u_xlat5 = vec3<f32>(x_126.x, x_126.y, x_126.w);
  let x_129 : f32 = u_xlat5.z;
  let x_131 : f32 = u_xlat5.x;
  u_xlat5.x = (x_129 * x_131);
  let x_134 : vec3<f32> = u_xlat5;
  let x_141 : vec2<f32> = ((vec2<f32>(x_134.x, x_134.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_142 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_141.x, x_141.y, x_142.z);
  let x_144 : vec3<f32> = u_xlat5;
  let x_148 : f32 = x_18.x_NormalSacle;
  let x_150 : vec2<f32> = (vec2<f32>(x_144.x, x_144.y) * vec2<f32>(x_148, x_148));
  let x_151 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_150.x, x_150.y, x_151.z);
  let x_153 : vec3<f32> = u_xlat5;
  let x_155 : vec3<f32> = u_xlat5;
  u_xlat25 = dot(vec2<f32>(x_153.x, x_153.y), vec2<f32>(x_155.x, x_155.y));
  let x_158 : f32 = u_xlat25;
  u_xlat25 = min(x_158, 1.0f);
  let x_161 : f32 = u_xlat25;
  u_xlat25 = (-(x_161) + 1.0f);
  let x_164 : f32 = u_xlat25;
  u_xlat5.z = sqrt(x_164);
  let x_168 : f32 = vs_COLOR0.w;
  u_xlat25 = (-(x_168) + 1.0f);
  let x_172 : f32 = u_xlat3.w;
  let x_174 : f32 = x_18.x_Color.w;
  let x_176 : f32 = u_xlat25;
  u_xlat25 = ((x_172 * x_174) + -(x_176));
  let x_182 : f32 = u_xlat25;
  u_xlatb25 = (x_182 < 0.0f);
  let x_185 : bool = u_xlatb25;
  if (((select(0i, 1i, x_185) * -1i) != 0i)) {
    discard;
  }
  let x_194 : vec3<f32> = vs_TEXCOORD4;
  let x_198 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat6 = (vec3<f32>(x_194.y, x_194.y, x_194.y) * vec3<f32>(x_198.x, x_198.y, x_198.z));
  let x_202 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_204 : vec3<f32> = vs_TEXCOORD4;
  let x_207 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_202.x, x_202.y, x_202.z) * vec3<f32>(x_204.x, x_204.x, x_204.x)) + x_207);
  let x_211 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_213 : vec3<f32> = vs_TEXCOORD4;
  let x_216 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_211.x, x_211.y, x_211.z) * vec3<f32>(x_213.z, x_213.z, x_213.z)) + x_216);
  let x_218 : vec3<f32> = u_xlat6;
  let x_220 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat6 = (x_218 + vec3<f32>(x_220.x, x_220.y, x_220.z));
  let x_225 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb25 = (x_225 == 1.0f);
  let x_227 : bool = u_xlatb25;
  if (x_227) {
    let x_231 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb25 = (x_231 == 1.0f);
    let x_234 : vec3<f32> = vs_TEXCOORD4;
    let x_238 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_240 : vec3<f32> = (vec3<f32>(x_234.y, x_234.y, x_234.y) * vec3<f32>(x_238.x, x_238.y, x_238.z));
    let x_241 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
    let x_244 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_246 : vec3<f32> = vs_TEXCOORD4;
    let x_249 : vec4<f32> = u_xlat7;
    let x_251 : vec3<f32> = ((vec3<f32>(x_244.x, x_244.y, x_244.z) * vec3<f32>(x_246.x, x_246.x, x_246.x)) + vec3<f32>(x_249.x, x_249.y, x_249.z));
    let x_252 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
    let x_255 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_257 : vec3<f32> = vs_TEXCOORD4;
    let x_260 : vec4<f32> = u_xlat7;
    let x_262 : vec3<f32> = ((vec3<f32>(x_255.x, x_255.y, x_255.z) * vec3<f32>(x_257.z, x_257.z, x_257.z)) + vec3<f32>(x_260.x, x_260.y, x_260.z));
    let x_263 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
    let x_265 : vec4<f32> = u_xlat7;
    let x_268 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_270 : vec3<f32> = (vec3<f32>(x_265.x, x_265.y, x_265.z) + vec3<f32>(x_268.x, x_268.y, x_268.z));
    let x_271 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
    let x_273 : bool = u_xlatb25;
    if (x_273) {
      let x_277 : vec4<f32> = u_xlat7;
      x_274 = vec3<f32>(x_277.x, x_277.y, x_277.z);
    } else {
      let x_280 : vec3<f32> = vs_TEXCOORD4;
      x_274 = x_280;
    }
    let x_281 : vec3<f32> = x_274;
    let x_282 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
    let x_284 : vec4<f32> = u_xlat7;
    let x_288 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_290 : vec3<f32> = (vec3<f32>(x_284.x, x_284.y, x_284.z) + -(x_288));
    let x_291 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
    let x_293 : vec4<f32> = u_xlat7;
    let x_297 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_298 : vec3<f32> = (vec3<f32>(x_293.x, x_293.y, x_293.z) * x_297);
    let x_299 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_299.x, x_298.x, x_298.y, x_298.z);
    let x_302 : f32 = u_xlat7.y;
    u_xlat25 = ((x_302 * 0.25f) + 0.75f);
    let x_309 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat26 = ((x_309 * 0.5f) + 0.75f);
    let x_313 : f32 = u_xlat25;
    let x_314 : f32 = u_xlat26;
    u_xlat7.x = max(x_313, x_314);
    let x_325 : vec4<f32> = u_xlat7;
    let x_327 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_325.x, x_325.z, x_325.w));
    u_xlat7 = x_327;
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
    u_xlat7.w = 1.0f;
  }
  let x_333 : vec4<f32> = u_xlat7;
  let x_336 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat25 = dot(x_333, x_336);
  let x_338 : f32 = u_xlat25;
  u_xlat25 = clamp(x_338, 0.0f, 1.0f);
  let x_340 : vec3<f32> = u_xlat6;
  let x_341 : vec3<f32> = u_xlat6;
  u_xlat26 = dot(x_340, x_341);
  let x_348 : f32 = u_xlat26;
  let x_350 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_348, x_348));
  u_xlat26 = x_350.x;
  let x_352 : f32 = u_xlat25;
  let x_353 : f32 = u_xlat26;
  u_xlat25 = (x_352 * x_353);
  let x_356 : vec3<f32> = vs_TEXCOORD1;
  let x_357 : vec3<f32> = u_xlat5;
  u_xlat6.x = dot(x_356, x_357);
  let x_361 : vec3<f32> = vs_TEXCOORD2;
  let x_362 : vec3<f32> = u_xlat5;
  u_xlat6.y = dot(x_361, x_362);
  let x_366 : vec3<f32> = vs_TEXCOORD3;
  let x_367 : vec3<f32> = u_xlat5;
  u_xlat6.z = dot(x_366, x_367);
  let x_370 : vec3<f32> = u_xlat6;
  let x_371 : vec3<f32> = u_xlat6;
  u_xlat26 = dot(x_370, x_371);
  let x_373 : f32 = u_xlat26;
  u_xlat26 = inverseSqrt(x_373);
  let x_375 : f32 = u_xlat26;
  let x_377 : vec3<f32> = u_xlat6;
  u_xlat5 = (vec3<f32>(x_375, x_375, x_375) * x_377);
  let x_379 : f32 = u_xlat25;
  let x_383 : vec4<f32> = x_18.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_379, x_379, x_379) * vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : vec4<f32> = u_xlat3;
  let x_388 : vec4<f32> = vs_COLOR0;
  let x_393 : vec3<f32> = ((vec3<f32>(x_386.x, x_386.y, x_386.z) * vec3<f32>(x_388.x, x_388.y, x_388.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_394 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_398 : f32 = x_18.x_Metallic;
  let x_400 : f32 = x_18.x_Metallic;
  let x_402 : f32 = x_18.x_Metallic;
  let x_403 : vec3<f32> = vec3<f32>(x_398, x_400, x_402);
  let x_408 : vec4<f32> = u_xlat3;
  let x_413 : vec3<f32> = ((vec3<f32>(x_403.x, x_403.y, x_403.z) * vec3<f32>(x_408.x, x_408.y, x_408.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_414 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_417 : f32 = x_18.x_Metallic;
  u_xlat25 = ((-(x_417) * 0.959999979f) + 0.959999979f);
  let x_422 : f32 = u_xlat25;
  let x_424 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_422, x_422, x_422) * x_424);
  let x_428 : f32 = x_18.x_Glossiness;
  u_xlat25 = (-(x_428) + 1.0f);
  let x_431 : vec3<f32> = u_xlat0;
  let x_432 : f32 = u_xlat24;
  let x_435 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_431 * vec3<f32>(x_432, x_432, x_432)) + x_435);
  let x_437 : vec3<f32> = u_xlat0;
  let x_438 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_437, x_438);
  let x_440 : f32 = u_xlat24;
  u_xlat24 = max(x_440, 0.001f);
  let x_443 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_443);
  let x_445 : f32 = u_xlat24;
  let x_447 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_445, x_445, x_445) * x_447);
  let x_449 : vec3<f32> = u_xlat5;
  let x_450 : vec3<f32> = u_xlat2;
  u_xlat24 = dot(x_449, x_450);
  let x_452 : vec3<f32> = u_xlat5;
  let x_453 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(x_452, x_453);
  let x_457 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_457, 0.0f, 1.0f);
  let x_461 : vec3<f32> = u_xlat5;
  let x_462 : vec3<f32> = u_xlat0;
  u_xlat10 = dot(x_461, x_462);
  let x_464 : f32 = u_xlat10;
  u_xlat10 = clamp(x_464, 0.0f, 1.0f);
  let x_466 : vec3<f32> = u_xlat1;
  let x_467 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_466, x_467);
  let x_471 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_471, 0.0f, 1.0f);
  let x_476 : f32 = u_xlat0.x;
  let x_478 : f32 = u_xlat0.x;
  u_xlat8.x = (x_476 * x_478);
  let x_481 : vec3<f32> = u_xlat8;
  let x_483 : f32 = u_xlat25;
  u_xlat8.x = dot(vec2<f32>(x_481.x, x_481.x), vec2<f32>(x_483, x_483));
  let x_488 : f32 = u_xlat8.x;
  u_xlat8.x = (x_488 + -0.5f);
  let x_494 : f32 = u_xlat2.x;
  u_xlat16 = (-(x_494) + 1.0f);
  let x_497 : f32 = u_xlat16;
  let x_498 : f32 = u_xlat16;
  u_xlat1.x = (x_497 * x_498);
  let x_502 : f32 = u_xlat1.x;
  let x_504 : f32 = u_xlat1.x;
  u_xlat1.x = (x_502 * x_504);
  let x_507 : f32 = u_xlat16;
  let x_509 : f32 = u_xlat1.x;
  u_xlat16 = (x_507 * x_509);
  let x_512 : f32 = u_xlat8.x;
  let x_513 : f32 = u_xlat16;
  u_xlat16 = ((x_512 * x_513) + 1.0f);
  let x_516 : f32 = u_xlat24;
  u_xlat1.x = (-(abs(x_516)) + 1.0f);
  let x_523 : f32 = u_xlat1.x;
  let x_525 : f32 = u_xlat1.x;
  u_xlat9 = (x_523 * x_525);
  let x_527 : f32 = u_xlat9;
  let x_528 : f32 = u_xlat9;
  u_xlat9 = (x_527 * x_528);
  let x_531 : f32 = u_xlat1.x;
  let x_532 : f32 = u_xlat9;
  u_xlat1.x = (x_531 * x_532);
  let x_536 : f32 = u_xlat8.x;
  let x_538 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_536 * x_538) + 1.0f);
  let x_543 : f32 = u_xlat8.x;
  let x_544 : f32 = u_xlat16;
  u_xlat8.x = (x_543 * x_544);
  let x_547 : f32 = u_xlat25;
  let x_548 : f32 = u_xlat25;
  u_xlat16 = (x_547 * x_548);
  let x_550 : f32 = u_xlat16;
  u_xlat16 = max(x_550, 0.002f);
  let x_553 : f32 = u_xlat16;
  u_xlat1.x = (-(x_553) + 1.0f);
  let x_557 : f32 = u_xlat24;
  let x_560 : f32 = u_xlat1.x;
  let x_562 : f32 = u_xlat16;
  u_xlat9 = ((abs(x_557) * x_560) + x_562);
  let x_565 : f32 = u_xlat2.x;
  let x_567 : f32 = u_xlat1.x;
  let x_569 : f32 = u_xlat16;
  u_xlat1.x = ((x_565 * x_567) + x_569);
  let x_572 : f32 = u_xlat24;
  let x_575 : f32 = u_xlat1.x;
  u_xlat24 = (abs(x_572) * x_575);
  let x_578 : f32 = u_xlat2.x;
  let x_579 : f32 = u_xlat9;
  let x_581 : f32 = u_xlat24;
  u_xlat24 = ((x_578 * x_579) + x_581);
  let x_583 : f32 = u_xlat24;
  u_xlat24 = (x_583 + 0.00001f);
  let x_586 : f32 = u_xlat24;
  u_xlat24 = (0.5f / x_586);
  let x_588 : f32 = u_xlat16;
  let x_589 : f32 = u_xlat16;
  u_xlat16 = (x_588 * x_589);
  let x_591 : f32 = u_xlat10;
  let x_592 : f32 = u_xlat16;
  let x_594 : f32 = u_xlat10;
  u_xlat1.x = ((x_591 * x_592) + -(x_594));
  let x_599 : f32 = u_xlat1.x;
  let x_600 : f32 = u_xlat10;
  u_xlat1.x = ((x_599 * x_600) + 1.0f);
  let x_604 : f32 = u_xlat16;
  u_xlat16 = (x_604 * 0.318309873f);
  let x_608 : f32 = u_xlat1.x;
  let x_610 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_608 * x_610) + 0.0000001f);
  let x_615 : f32 = u_xlat16;
  let x_617 : f32 = u_xlat1.x;
  u_xlat16 = (x_615 / x_617);
  let x_619 : f32 = u_xlat16;
  let x_620 : f32 = u_xlat24;
  u_xlat8.y = (x_619 * x_620);
  let x_623 : vec3<f32> = u_xlat2;
  let x_625 : vec3<f32> = u_xlat8;
  let x_627 : vec2<f32> = (vec2<f32>(x_623.x, x_623.x) * vec2<f32>(x_625.x, x_625.y));
  let x_628 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_627.x, x_627.y, x_628.z);
  let x_631 : f32 = u_xlat8.y;
  u_xlat16 = (x_631 * 3.141592741f);
  let x_634 : f32 = u_xlat16;
  u_xlat16 = max(x_634, 0.0f);
  let x_636 : vec4<f32> = u_xlat3;
  let x_638 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(vec3<f32>(x_636.x, x_636.y, x_636.z), vec3<f32>(x_638.x, x_638.y, x_638.z));
  let x_642 : f32 = u_xlat24;
  u_xlatb24 = !((x_642 == 0.0f));
  let x_644 : bool = u_xlatb24;
  u_xlat24 = select(0.0f, 1.0f, x_644);
  let x_646 : f32 = u_xlat24;
  let x_647 : f32 = u_xlat16;
  u_xlat16 = (x_646 * x_647);
  let x_649 : vec3<f32> = u_xlat8;
  let x_651 : vec3<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_649.x, x_649.x, x_649.x) * x_651);
  let x_653 : vec3<f32> = u_xlat6;
  let x_654 : f32 = u_xlat16;
  u_xlat8 = (x_653 * vec3<f32>(x_654, x_654, x_654));
  let x_658 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_658) + 1.0f);
  let x_663 : f32 = u_xlat0.x;
  let x_665 : f32 = u_xlat0.x;
  u_xlat25 = (x_663 * x_665);
  let x_667 : f32 = u_xlat25;
  let x_668 : f32 = u_xlat25;
  u_xlat25 = (x_667 * x_668);
  let x_671 : f32 = u_xlat0.x;
  let x_672 : f32 = u_xlat25;
  u_xlat0.x = (x_671 * x_672);
  let x_675 : vec4<f32> = u_xlat3;
  u_xlat2 = (-(vec3<f32>(x_675.x, x_675.y, x_675.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_680 : vec3<f32> = u_xlat2;
  let x_681 : vec3<f32> = u_xlat0;
  let x_684 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_680 * vec3<f32>(x_681.x, x_681.x, x_681.x)) + vec3<f32>(x_684.x, x_684.y, x_684.z));
  let x_687 : vec3<f32> = u_xlat8;
  let x_688 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_687 * x_688);
  let x_690 : vec3<f32> = u_xlat4;
  let x_691 : vec3<f32> = u_xlat1;
  let x_693 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_690 * x_691) + x_693);
  let x_696 : f32 = vs_TEXCOORD8;
  let x_698 : f32 = x_18.x_ProjectionParams.y;
  u_xlat24 = (x_696 / x_698);
  let x_700 : f32 = u_xlat24;
  u_xlat24 = (-(x_700) + 1.0f);
  let x_703 : f32 = u_xlat24;
  let x_705 : f32 = x_18.x_ProjectionParams.z;
  u_xlat24 = (x_703 * x_705);
  let x_707 : f32 = u_xlat24;
  u_xlat24 = max(x_707, 0.0f);
  let x_709 : f32 = u_xlat24;
  let x_712 : f32 = x_18.unity_FogParams.x;
  u_xlat24 = (x_709 * x_712);
  let x_714 : f32 = u_xlat24;
  let x_715 : f32 = u_xlat24;
  u_xlat24 = (x_714 * -(x_715));
  let x_718 : f32 = u_xlat24;
  u_xlat24 = exp2(x_718);
  let x_722 : vec3<f32> = u_xlat0;
  let x_723 : f32 = u_xlat24;
  let x_725 : vec3<f32> = (x_722 * vec3<f32>(x_723, x_723, x_723));
  let x_726 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(6) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @location(2) vs_TEXCOORD8_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

