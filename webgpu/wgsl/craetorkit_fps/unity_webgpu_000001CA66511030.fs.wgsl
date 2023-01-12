struct PGlobals {
  x_Time : vec4<f32>,
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
  x_NormalSacle : f32,
  x_MovementSpeed : f32,
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_Normal : texture_2d<f32>;

@group(0) @binding(9) var sampler_Normal : sampler;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(6) var sampler_LightTexture0 : sampler;

@group(0) @binding(3) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

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
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var x_270 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlatb26 : bool;
  var u_xlat27 : f32;
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
  u_xlat6 = (vec4<f32>(x_194.y, x_194.y, x_194.y, x_194.y) * x_198);
  let x_201 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_202 : vec3<f32> = vs_TEXCOORD4;
  let x_205 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_201 * vec4<f32>(x_202.x, x_202.x, x_202.x, x_202.x)) + x_205);
  let x_208 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_209 : vec3<f32> = vs_TEXCOORD4;
  let x_212 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_208 * vec4<f32>(x_209.z, x_209.z, x_209.z, x_209.z)) + x_212);
  let x_214 : vec4<f32> = u_xlat6;
  let x_217 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat6 = (x_214 + x_217);
  let x_221 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb25 = (x_221 == 1.0f);
  let x_223 : bool = u_xlatb25;
  if (x_223) {
    let x_227 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb25 = (x_227 == 1.0f);
    let x_230 : vec3<f32> = vs_TEXCOORD4;
    let x_234 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_236 : vec3<f32> = (vec3<f32>(x_230.y, x_230.y, x_230.y) * vec3<f32>(x_234.x, x_234.y, x_234.z));
    let x_237 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
    let x_240 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_242 : vec3<f32> = vs_TEXCOORD4;
    let x_245 : vec4<f32> = u_xlat7;
    let x_247 : vec3<f32> = ((vec3<f32>(x_240.x, x_240.y, x_240.z) * vec3<f32>(x_242.x, x_242.x, x_242.x)) + vec3<f32>(x_245.x, x_245.y, x_245.z));
    let x_248 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
    let x_251 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_253 : vec3<f32> = vs_TEXCOORD4;
    let x_256 : vec4<f32> = u_xlat7;
    let x_258 : vec3<f32> = ((vec3<f32>(x_251.x, x_251.y, x_251.z) * vec3<f32>(x_253.z, x_253.z, x_253.z)) + vec3<f32>(x_256.x, x_256.y, x_256.z));
    let x_259 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
    let x_261 : vec4<f32> = u_xlat7;
    let x_264 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_266 : vec3<f32> = (vec3<f32>(x_261.x, x_261.y, x_261.z) + vec3<f32>(x_264.x, x_264.y, x_264.z));
    let x_267 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
    let x_269 : bool = u_xlatb25;
    if (x_269) {
      let x_273 : vec4<f32> = u_xlat7;
      x_270 = vec3<f32>(x_273.x, x_273.y, x_273.z);
    } else {
      let x_276 : vec3<f32> = vs_TEXCOORD4;
      x_270 = x_276;
    }
    let x_277 : vec3<f32> = x_270;
    let x_278 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
    let x_280 : vec4<f32> = u_xlat7;
    let x_284 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_286 : vec3<f32> = (vec3<f32>(x_280.x, x_280.y, x_280.z) + -(x_284));
    let x_287 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
    let x_289 : vec4<f32> = u_xlat7;
    let x_293 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_294 : vec3<f32> = (vec3<f32>(x_289.x, x_289.y, x_289.z) * x_293);
    let x_295 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_295.x, x_294.x, x_294.y, x_294.z);
    let x_298 : f32 = u_xlat7.y;
    u_xlat25 = ((x_298 * 0.25f) + 0.75f);
    let x_305 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat26 = ((x_305 * 0.5f) + 0.75f);
    let x_309 : f32 = u_xlat25;
    let x_310 : f32 = u_xlat26;
    u_xlat7.x = max(x_309, x_310);
    let x_321 : vec4<f32> = u_xlat7;
    let x_323 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_321.x, x_321.z, x_321.w));
    u_xlat7 = x_323;
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
    u_xlat7.w = 1.0f;
  }
  let x_329 : vec4<f32> = u_xlat7;
  let x_331 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat25 = dot(x_329, x_331);
  let x_333 : f32 = u_xlat25;
  u_xlat25 = clamp(x_333, 0.0f, 1.0f);
  let x_337 : f32 = u_xlat6.z;
  u_xlatb26 = (0.0f < x_337);
  let x_339 : bool = u_xlatb26;
  u_xlat26 = select(0.0f, 1.0f, x_339);
  let x_341 : vec4<f32> = u_xlat6;
  let x_343 : vec4<f32> = u_xlat6;
  let x_345 : vec2<f32> = (vec2<f32>(x_341.x, x_341.y) / vec2<f32>(x_343.w, x_343.w));
  let x_346 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_345.x, x_345.y, x_346.z, x_346.w);
  let x_348 : vec4<f32> = u_xlat7;
  let x_351 : vec2<f32> = (vec2<f32>(x_348.x, x_348.y) + vec2<f32>(0.5f, 0.5f));
  let x_352 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_351.x, x_351.y, x_352.z, x_352.w);
  let x_360 : vec4<f32> = u_xlat7;
  let x_362 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_360.x, x_360.y));
  u_xlat27 = x_362.w;
  let x_364 : f32 = u_xlat26;
  let x_365 : f32 = u_xlat27;
  u_xlat26 = (x_364 * x_365);
  let x_367 : vec4<f32> = u_xlat6;
  let x_369 : vec4<f32> = u_xlat6;
  u_xlat27 = dot(vec3<f32>(x_367.x, x_367.y, x_367.z), vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_377 : f32 = u_xlat27;
  let x_379 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_377, x_377));
  u_xlat27 = x_379.x;
  let x_381 : f32 = u_xlat26;
  let x_382 : f32 = u_xlat27;
  u_xlat26 = (x_381 * x_382);
  let x_384 : f32 = u_xlat25;
  let x_385 : f32 = u_xlat26;
  u_xlat25 = (x_384 * x_385);
  let x_388 : vec3<f32> = vs_TEXCOORD1;
  let x_389 : vec3<f32> = u_xlat5;
  u_xlat6.x = dot(x_388, x_389);
  let x_393 : vec3<f32> = vs_TEXCOORD2;
  let x_394 : vec3<f32> = u_xlat5;
  u_xlat6.y = dot(x_393, x_394);
  let x_398 : vec3<f32> = vs_TEXCOORD3;
  let x_399 : vec3<f32> = u_xlat5;
  u_xlat6.z = dot(x_398, x_399);
  let x_402 : vec4<f32> = u_xlat6;
  let x_404 : vec4<f32> = u_xlat6;
  u_xlat26 = dot(vec3<f32>(x_402.x, x_402.y, x_402.z), vec3<f32>(x_404.x, x_404.y, x_404.z));
  let x_407 : f32 = u_xlat26;
  u_xlat26 = inverseSqrt(x_407);
  let x_409 : f32 = u_xlat26;
  let x_411 : vec4<f32> = u_xlat6;
  u_xlat5 = (vec3<f32>(x_409, x_409, x_409) * vec3<f32>(x_411.x, x_411.y, x_411.z));
  let x_414 : f32 = u_xlat25;
  let x_418 : vec4<f32> = x_18.x_LightColor0;
  let x_420 : vec3<f32> = (vec3<f32>(x_414, x_414, x_414) * vec3<f32>(x_418.x, x_418.y, x_418.z));
  let x_421 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_423 : vec4<f32> = u_xlat3;
  let x_425 : vec4<f32> = vs_COLOR0;
  let x_430 : vec3<f32> = ((vec3<f32>(x_423.x, x_423.y, x_423.z) * vec3<f32>(x_425.x, x_425.y, x_425.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_431 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_435 : f32 = x_18.x_Metallic;
  let x_437 : f32 = x_18.x_Metallic;
  let x_439 : f32 = x_18.x_Metallic;
  let x_440 : vec3<f32> = vec3<f32>(x_435, x_437, x_439);
  let x_445 : vec4<f32> = u_xlat3;
  let x_450 : vec3<f32> = ((vec3<f32>(x_440.x, x_440.y, x_440.z) * vec3<f32>(x_445.x, x_445.y, x_445.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_451 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_454 : f32 = x_18.x_Metallic;
  u_xlat25 = ((-(x_454) * 0.959999979f) + 0.959999979f);
  let x_459 : f32 = u_xlat25;
  let x_461 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_459, x_459, x_459) * x_461);
  let x_465 : f32 = x_18.x_Glossiness;
  u_xlat25 = (-(x_465) + 1.0f);
  let x_468 : vec3<f32> = u_xlat0;
  let x_469 : f32 = u_xlat24;
  let x_472 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_468 * vec3<f32>(x_469, x_469, x_469)) + x_472);
  let x_474 : vec3<f32> = u_xlat0;
  let x_475 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_474, x_475);
  let x_477 : f32 = u_xlat24;
  u_xlat24 = max(x_477, 0.001f);
  let x_480 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_480);
  let x_482 : f32 = u_xlat24;
  let x_484 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_482, x_482, x_482) * x_484);
  let x_486 : vec3<f32> = u_xlat5;
  let x_487 : vec3<f32> = u_xlat2;
  u_xlat24 = dot(x_486, x_487);
  let x_489 : vec3<f32> = u_xlat5;
  let x_490 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(x_489, x_490);
  let x_494 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_494, 0.0f, 1.0f);
  let x_498 : vec3<f32> = u_xlat5;
  let x_499 : vec3<f32> = u_xlat0;
  u_xlat10 = dot(x_498, x_499);
  let x_501 : f32 = u_xlat10;
  u_xlat10 = clamp(x_501, 0.0f, 1.0f);
  let x_503 : vec3<f32> = u_xlat1;
  let x_504 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_503, x_504);
  let x_508 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_508, 0.0f, 1.0f);
  let x_513 : f32 = u_xlat0.x;
  let x_515 : f32 = u_xlat0.x;
  u_xlat8.x = (x_513 * x_515);
  let x_518 : vec3<f32> = u_xlat8;
  let x_520 : f32 = u_xlat25;
  u_xlat8.x = dot(vec2<f32>(x_518.x, x_518.x), vec2<f32>(x_520, x_520));
  let x_525 : f32 = u_xlat8.x;
  u_xlat8.x = (x_525 + -0.5f);
  let x_531 : f32 = u_xlat2.x;
  u_xlat16 = (-(x_531) + 1.0f);
  let x_534 : f32 = u_xlat16;
  let x_535 : f32 = u_xlat16;
  u_xlat1.x = (x_534 * x_535);
  let x_539 : f32 = u_xlat1.x;
  let x_541 : f32 = u_xlat1.x;
  u_xlat1.x = (x_539 * x_541);
  let x_544 : f32 = u_xlat16;
  let x_546 : f32 = u_xlat1.x;
  u_xlat16 = (x_544 * x_546);
  let x_549 : f32 = u_xlat8.x;
  let x_550 : f32 = u_xlat16;
  u_xlat16 = ((x_549 * x_550) + 1.0f);
  let x_553 : f32 = u_xlat24;
  u_xlat1.x = (-(abs(x_553)) + 1.0f);
  let x_560 : f32 = u_xlat1.x;
  let x_562 : f32 = u_xlat1.x;
  u_xlat9 = (x_560 * x_562);
  let x_564 : f32 = u_xlat9;
  let x_565 : f32 = u_xlat9;
  u_xlat9 = (x_564 * x_565);
  let x_568 : f32 = u_xlat1.x;
  let x_569 : f32 = u_xlat9;
  u_xlat1.x = (x_568 * x_569);
  let x_573 : f32 = u_xlat8.x;
  let x_575 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_573 * x_575) + 1.0f);
  let x_580 : f32 = u_xlat8.x;
  let x_581 : f32 = u_xlat16;
  u_xlat8.x = (x_580 * x_581);
  let x_584 : f32 = u_xlat25;
  let x_585 : f32 = u_xlat25;
  u_xlat16 = (x_584 * x_585);
  let x_587 : f32 = u_xlat16;
  u_xlat16 = max(x_587, 0.002f);
  let x_590 : f32 = u_xlat16;
  u_xlat1.x = (-(x_590) + 1.0f);
  let x_594 : f32 = u_xlat24;
  let x_597 : f32 = u_xlat1.x;
  let x_599 : f32 = u_xlat16;
  u_xlat9 = ((abs(x_594) * x_597) + x_599);
  let x_602 : f32 = u_xlat2.x;
  let x_604 : f32 = u_xlat1.x;
  let x_606 : f32 = u_xlat16;
  u_xlat1.x = ((x_602 * x_604) + x_606);
  let x_609 : f32 = u_xlat24;
  let x_612 : f32 = u_xlat1.x;
  u_xlat24 = (abs(x_609) * x_612);
  let x_615 : f32 = u_xlat2.x;
  let x_616 : f32 = u_xlat9;
  let x_618 : f32 = u_xlat24;
  u_xlat24 = ((x_615 * x_616) + x_618);
  let x_620 : f32 = u_xlat24;
  u_xlat24 = (x_620 + 0.00001f);
  let x_623 : f32 = u_xlat24;
  u_xlat24 = (0.5f / x_623);
  let x_625 : f32 = u_xlat16;
  let x_626 : f32 = u_xlat16;
  u_xlat16 = (x_625 * x_626);
  let x_628 : f32 = u_xlat10;
  let x_629 : f32 = u_xlat16;
  let x_631 : f32 = u_xlat10;
  u_xlat1.x = ((x_628 * x_629) + -(x_631));
  let x_636 : f32 = u_xlat1.x;
  let x_637 : f32 = u_xlat10;
  u_xlat1.x = ((x_636 * x_637) + 1.0f);
  let x_641 : f32 = u_xlat16;
  u_xlat16 = (x_641 * 0.318309873f);
  let x_645 : f32 = u_xlat1.x;
  let x_647 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_645 * x_647) + 0.0000001f);
  let x_652 : f32 = u_xlat16;
  let x_654 : f32 = u_xlat1.x;
  u_xlat16 = (x_652 / x_654);
  let x_656 : f32 = u_xlat16;
  let x_657 : f32 = u_xlat24;
  u_xlat8.y = (x_656 * x_657);
  let x_660 : vec3<f32> = u_xlat2;
  let x_662 : vec3<f32> = u_xlat8;
  let x_664 : vec2<f32> = (vec2<f32>(x_660.x, x_660.x) * vec2<f32>(x_662.x, x_662.y));
  let x_665 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_664.x, x_664.y, x_665.z);
  let x_668 : f32 = u_xlat8.y;
  u_xlat16 = (x_668 * 3.141592741f);
  let x_671 : f32 = u_xlat16;
  u_xlat16 = max(x_671, 0.0f);
  let x_673 : vec4<f32> = u_xlat3;
  let x_675 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(vec3<f32>(x_673.x, x_673.y, x_673.z), vec3<f32>(x_675.x, x_675.y, x_675.z));
  let x_679 : f32 = u_xlat24;
  u_xlatb24 = !((x_679 == 0.0f));
  let x_681 : bool = u_xlatb24;
  u_xlat24 = select(0.0f, 1.0f, x_681);
  let x_683 : f32 = u_xlat24;
  let x_684 : f32 = u_xlat16;
  u_xlat16 = (x_683 * x_684);
  let x_686 : vec3<f32> = u_xlat8;
  let x_688 : vec4<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_686.x, x_686.x, x_686.x) * vec3<f32>(x_688.x, x_688.y, x_688.z));
  let x_691 : vec4<f32> = u_xlat6;
  let x_693 : f32 = u_xlat16;
  u_xlat8 = (vec3<f32>(x_691.x, x_691.y, x_691.z) * vec3<f32>(x_693, x_693, x_693));
  let x_697 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_697) + 1.0f);
  let x_702 : f32 = u_xlat0.x;
  let x_704 : f32 = u_xlat0.x;
  u_xlat25 = (x_702 * x_704);
  let x_706 : f32 = u_xlat25;
  let x_707 : f32 = u_xlat25;
  u_xlat25 = (x_706 * x_707);
  let x_710 : f32 = u_xlat0.x;
  let x_711 : f32 = u_xlat25;
  u_xlat0.x = (x_710 * x_711);
  let x_714 : vec4<f32> = u_xlat3;
  u_xlat2 = (-(vec3<f32>(x_714.x, x_714.y, x_714.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_719 : vec3<f32> = u_xlat2;
  let x_720 : vec3<f32> = u_xlat0;
  let x_723 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_719 * vec3<f32>(x_720.x, x_720.x, x_720.x)) + vec3<f32>(x_723.x, x_723.y, x_723.z));
  let x_726 : vec3<f32> = u_xlat8;
  let x_727 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_726 * x_727);
  let x_731 : vec3<f32> = u_xlat4;
  let x_732 : vec3<f32> = u_xlat1;
  let x_734 : vec3<f32> = u_xlat0;
  let x_735 : vec3<f32> = ((x_731 * x_732) + x_734);
  let x_736 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(5) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

