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
  let x_210 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_212 : vec3<f32> = vs_TEXCOORD4;
  let x_215 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_210.x, x_210.y, x_210.z) * vec3<f32>(x_212.z, x_212.z, x_212.z)) + x_215);
  let x_217 : vec3<f32> = u_xlat6;
  let x_220 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat6 = (x_217 + vec3<f32>(x_220.x, x_220.y, x_220.z));
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
  let x_335 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat25 = dot(x_333, x_335);
  let x_337 : f32 = u_xlat25;
  u_xlat25 = clamp(x_337, 0.0f, 1.0f);
  let x_339 : vec3<f32> = u_xlat6;
  let x_340 : vec3<f32> = u_xlat6;
  u_xlat26 = dot(x_339, x_340);
  let x_347 : f32 = u_xlat26;
  let x_349 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_347, x_347));
  u_xlat26 = x_349.x;
  let x_351 : f32 = u_xlat25;
  let x_352 : f32 = u_xlat26;
  u_xlat25 = (x_351 * x_352);
  let x_355 : vec3<f32> = vs_TEXCOORD1;
  let x_356 : vec3<f32> = u_xlat5;
  u_xlat6.x = dot(x_355, x_356);
  let x_360 : vec3<f32> = vs_TEXCOORD2;
  let x_361 : vec3<f32> = u_xlat5;
  u_xlat6.y = dot(x_360, x_361);
  let x_365 : vec3<f32> = vs_TEXCOORD3;
  let x_366 : vec3<f32> = u_xlat5;
  u_xlat6.z = dot(x_365, x_366);
  let x_369 : vec3<f32> = u_xlat6;
  let x_370 : vec3<f32> = u_xlat6;
  u_xlat26 = dot(x_369, x_370);
  let x_372 : f32 = u_xlat26;
  u_xlat26 = inverseSqrt(x_372);
  let x_374 : f32 = u_xlat26;
  let x_376 : vec3<f32> = u_xlat6;
  u_xlat5 = (vec3<f32>(x_374, x_374, x_374) * x_376);
  let x_378 : f32 = u_xlat25;
  let x_382 : vec4<f32> = x_18.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_378, x_378, x_378) * vec3<f32>(x_382.x, x_382.y, x_382.z));
  let x_385 : vec4<f32> = u_xlat3;
  let x_387 : vec4<f32> = vs_COLOR0;
  let x_392 : vec3<f32> = ((vec3<f32>(x_385.x, x_385.y, x_385.z) * vec3<f32>(x_387.x, x_387.y, x_387.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_393 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  let x_397 : f32 = x_18.x_Metallic;
  let x_399 : f32 = x_18.x_Metallic;
  let x_401 : f32 = x_18.x_Metallic;
  let x_402 : vec3<f32> = vec3<f32>(x_397, x_399, x_401);
  let x_407 : vec4<f32> = u_xlat3;
  let x_412 : vec3<f32> = ((vec3<f32>(x_402.x, x_402.y, x_402.z) * vec3<f32>(x_407.x, x_407.y, x_407.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_413 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_416 : f32 = x_18.x_Metallic;
  u_xlat25 = ((-(x_416) * 0.959999979f) + 0.959999979f);
  let x_421 : f32 = u_xlat25;
  let x_423 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_421, x_421, x_421) * x_423);
  let x_427 : f32 = x_18.x_Glossiness;
  u_xlat25 = (-(x_427) + 1.0f);
  let x_430 : vec3<f32> = u_xlat0;
  let x_431 : f32 = u_xlat24;
  let x_434 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_430 * vec3<f32>(x_431, x_431, x_431)) + x_434);
  let x_436 : vec3<f32> = u_xlat0;
  let x_437 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_436, x_437);
  let x_439 : f32 = u_xlat24;
  u_xlat24 = max(x_439, 0.001f);
  let x_442 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_442);
  let x_444 : f32 = u_xlat24;
  let x_446 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_444, x_444, x_444) * x_446);
  let x_448 : vec3<f32> = u_xlat5;
  let x_449 : vec3<f32> = u_xlat2;
  u_xlat24 = dot(x_448, x_449);
  let x_451 : vec3<f32> = u_xlat5;
  let x_452 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(x_451, x_452);
  let x_456 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_456, 0.0f, 1.0f);
  let x_460 : vec3<f32> = u_xlat5;
  let x_461 : vec3<f32> = u_xlat0;
  u_xlat10 = dot(x_460, x_461);
  let x_463 : f32 = u_xlat10;
  u_xlat10 = clamp(x_463, 0.0f, 1.0f);
  let x_465 : vec3<f32> = u_xlat1;
  let x_466 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_465, x_466);
  let x_470 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_470, 0.0f, 1.0f);
  let x_475 : f32 = u_xlat0.x;
  let x_477 : f32 = u_xlat0.x;
  u_xlat8.x = (x_475 * x_477);
  let x_480 : vec3<f32> = u_xlat8;
  let x_482 : f32 = u_xlat25;
  u_xlat8.x = dot(vec2<f32>(x_480.x, x_480.x), vec2<f32>(x_482, x_482));
  let x_487 : f32 = u_xlat8.x;
  u_xlat8.x = (x_487 + -0.5f);
  let x_493 : f32 = u_xlat2.x;
  u_xlat16 = (-(x_493) + 1.0f);
  let x_496 : f32 = u_xlat16;
  let x_497 : f32 = u_xlat16;
  u_xlat1.x = (x_496 * x_497);
  let x_501 : f32 = u_xlat1.x;
  let x_503 : f32 = u_xlat1.x;
  u_xlat1.x = (x_501 * x_503);
  let x_506 : f32 = u_xlat16;
  let x_508 : f32 = u_xlat1.x;
  u_xlat16 = (x_506 * x_508);
  let x_511 : f32 = u_xlat8.x;
  let x_512 : f32 = u_xlat16;
  u_xlat16 = ((x_511 * x_512) + 1.0f);
  let x_515 : f32 = u_xlat24;
  u_xlat1.x = (-(abs(x_515)) + 1.0f);
  let x_522 : f32 = u_xlat1.x;
  let x_524 : f32 = u_xlat1.x;
  u_xlat9 = (x_522 * x_524);
  let x_526 : f32 = u_xlat9;
  let x_527 : f32 = u_xlat9;
  u_xlat9 = (x_526 * x_527);
  let x_530 : f32 = u_xlat1.x;
  let x_531 : f32 = u_xlat9;
  u_xlat1.x = (x_530 * x_531);
  let x_535 : f32 = u_xlat8.x;
  let x_537 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_535 * x_537) + 1.0f);
  let x_542 : f32 = u_xlat8.x;
  let x_543 : f32 = u_xlat16;
  u_xlat8.x = (x_542 * x_543);
  let x_546 : f32 = u_xlat25;
  let x_547 : f32 = u_xlat25;
  u_xlat16 = (x_546 * x_547);
  let x_549 : f32 = u_xlat16;
  u_xlat16 = max(x_549, 0.002f);
  let x_552 : f32 = u_xlat16;
  u_xlat1.x = (-(x_552) + 1.0f);
  let x_556 : f32 = u_xlat24;
  let x_559 : f32 = u_xlat1.x;
  let x_561 : f32 = u_xlat16;
  u_xlat9 = ((abs(x_556) * x_559) + x_561);
  let x_564 : f32 = u_xlat2.x;
  let x_566 : f32 = u_xlat1.x;
  let x_568 : f32 = u_xlat16;
  u_xlat1.x = ((x_564 * x_566) + x_568);
  let x_571 : f32 = u_xlat24;
  let x_574 : f32 = u_xlat1.x;
  u_xlat24 = (abs(x_571) * x_574);
  let x_577 : f32 = u_xlat2.x;
  let x_578 : f32 = u_xlat9;
  let x_580 : f32 = u_xlat24;
  u_xlat24 = ((x_577 * x_578) + x_580);
  let x_582 : f32 = u_xlat24;
  u_xlat24 = (x_582 + 0.00001f);
  let x_585 : f32 = u_xlat24;
  u_xlat24 = (0.5f / x_585);
  let x_587 : f32 = u_xlat16;
  let x_588 : f32 = u_xlat16;
  u_xlat16 = (x_587 * x_588);
  let x_590 : f32 = u_xlat10;
  let x_591 : f32 = u_xlat16;
  let x_593 : f32 = u_xlat10;
  u_xlat1.x = ((x_590 * x_591) + -(x_593));
  let x_598 : f32 = u_xlat1.x;
  let x_599 : f32 = u_xlat10;
  u_xlat1.x = ((x_598 * x_599) + 1.0f);
  let x_603 : f32 = u_xlat16;
  u_xlat16 = (x_603 * 0.318309873f);
  let x_607 : f32 = u_xlat1.x;
  let x_609 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_607 * x_609) + 0.0000001f);
  let x_614 : f32 = u_xlat16;
  let x_616 : f32 = u_xlat1.x;
  u_xlat16 = (x_614 / x_616);
  let x_618 : f32 = u_xlat16;
  let x_619 : f32 = u_xlat24;
  u_xlat8.y = (x_618 * x_619);
  let x_622 : vec3<f32> = u_xlat2;
  let x_624 : vec3<f32> = u_xlat8;
  let x_626 : vec2<f32> = (vec2<f32>(x_622.x, x_622.x) * vec2<f32>(x_624.x, x_624.y));
  let x_627 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_626.x, x_626.y, x_627.z);
  let x_630 : f32 = u_xlat8.y;
  u_xlat16 = (x_630 * 3.141592741f);
  let x_633 : f32 = u_xlat16;
  u_xlat16 = max(x_633, 0.0f);
  let x_635 : vec4<f32> = u_xlat3;
  let x_637 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(vec3<f32>(x_635.x, x_635.y, x_635.z), vec3<f32>(x_637.x, x_637.y, x_637.z));
  let x_641 : f32 = u_xlat24;
  u_xlatb24 = !((x_641 == 0.0f));
  let x_643 : bool = u_xlatb24;
  u_xlat24 = select(0.0f, 1.0f, x_643);
  let x_645 : f32 = u_xlat24;
  let x_646 : f32 = u_xlat16;
  u_xlat16 = (x_645 * x_646);
  let x_648 : vec3<f32> = u_xlat8;
  let x_650 : vec3<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_648.x, x_648.x, x_648.x) * x_650);
  let x_652 : vec3<f32> = u_xlat6;
  let x_653 : f32 = u_xlat16;
  u_xlat8 = (x_652 * vec3<f32>(x_653, x_653, x_653));
  let x_657 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_657) + 1.0f);
  let x_662 : f32 = u_xlat0.x;
  let x_664 : f32 = u_xlat0.x;
  u_xlat25 = (x_662 * x_664);
  let x_666 : f32 = u_xlat25;
  let x_667 : f32 = u_xlat25;
  u_xlat25 = (x_666 * x_667);
  let x_670 : f32 = u_xlat0.x;
  let x_671 : f32 = u_xlat25;
  u_xlat0.x = (x_670 * x_671);
  let x_674 : vec4<f32> = u_xlat3;
  u_xlat2 = (-(vec3<f32>(x_674.x, x_674.y, x_674.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_679 : vec3<f32> = u_xlat2;
  let x_680 : vec3<f32> = u_xlat0;
  let x_683 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_679 * vec3<f32>(x_680.x, x_680.x, x_680.x)) + vec3<f32>(x_683.x, x_683.y, x_683.z));
  let x_686 : vec3<f32> = u_xlat8;
  let x_687 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_686 * x_687);
  let x_691 : vec3<f32> = u_xlat4;
  let x_692 : vec3<f32> = u_xlat1;
  let x_694 : vec3<f32> = u_xlat0;
  let x_695 : vec3<f32> = ((x_691 * x_692) + x_694);
  let x_696 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
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

