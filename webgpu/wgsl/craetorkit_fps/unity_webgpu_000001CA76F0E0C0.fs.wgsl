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
  let x_209 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_210 : vec3<f32> = vs_TEXCOORD4;
  let x_213 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_209 * vec4<f32>(x_210.z, x_210.z, x_210.z, x_210.z)) + x_213);
  let x_215 : vec4<f32> = u_xlat6;
  let x_217 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat6 = (x_215 + x_217);
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
  let x_332 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat25 = dot(x_329, x_332);
  let x_334 : f32 = u_xlat25;
  u_xlat25 = clamp(x_334, 0.0f, 1.0f);
  let x_338 : f32 = u_xlat6.z;
  u_xlatb26 = (0.0f < x_338);
  let x_340 : bool = u_xlatb26;
  u_xlat26 = select(0.0f, 1.0f, x_340);
  let x_342 : vec4<f32> = u_xlat6;
  let x_344 : vec4<f32> = u_xlat6;
  let x_346 : vec2<f32> = (vec2<f32>(x_342.x, x_342.y) / vec2<f32>(x_344.w, x_344.w));
  let x_347 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_346.x, x_346.y, x_347.z, x_347.w);
  let x_349 : vec4<f32> = u_xlat7;
  let x_352 : vec2<f32> = (vec2<f32>(x_349.x, x_349.y) + vec2<f32>(0.5f, 0.5f));
  let x_353 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_352.x, x_352.y, x_353.z, x_353.w);
  let x_361 : vec4<f32> = u_xlat7;
  let x_363 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_361.x, x_361.y));
  u_xlat27 = x_363.w;
  let x_365 : f32 = u_xlat26;
  let x_366 : f32 = u_xlat27;
  u_xlat26 = (x_365 * x_366);
  let x_368 : vec4<f32> = u_xlat6;
  let x_370 : vec4<f32> = u_xlat6;
  u_xlat27 = dot(vec3<f32>(x_368.x, x_368.y, x_368.z), vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_378 : f32 = u_xlat27;
  let x_380 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_378, x_378));
  u_xlat27 = x_380.x;
  let x_382 : f32 = u_xlat26;
  let x_383 : f32 = u_xlat27;
  u_xlat26 = (x_382 * x_383);
  let x_385 : f32 = u_xlat25;
  let x_386 : f32 = u_xlat26;
  u_xlat25 = (x_385 * x_386);
  let x_389 : vec3<f32> = vs_TEXCOORD1;
  let x_390 : vec3<f32> = u_xlat5;
  u_xlat6.x = dot(x_389, x_390);
  let x_394 : vec3<f32> = vs_TEXCOORD2;
  let x_395 : vec3<f32> = u_xlat5;
  u_xlat6.y = dot(x_394, x_395);
  let x_399 : vec3<f32> = vs_TEXCOORD3;
  let x_400 : vec3<f32> = u_xlat5;
  u_xlat6.z = dot(x_399, x_400);
  let x_403 : vec4<f32> = u_xlat6;
  let x_405 : vec4<f32> = u_xlat6;
  u_xlat26 = dot(vec3<f32>(x_403.x, x_403.y, x_403.z), vec3<f32>(x_405.x, x_405.y, x_405.z));
  let x_408 : f32 = u_xlat26;
  u_xlat26 = inverseSqrt(x_408);
  let x_410 : f32 = u_xlat26;
  let x_412 : vec4<f32> = u_xlat6;
  u_xlat5 = (vec3<f32>(x_410, x_410, x_410) * vec3<f32>(x_412.x, x_412.y, x_412.z));
  let x_415 : f32 = u_xlat25;
  let x_419 : vec4<f32> = x_18.x_LightColor0;
  let x_421 : vec3<f32> = (vec3<f32>(x_415, x_415, x_415) * vec3<f32>(x_419.x, x_419.y, x_419.z));
  let x_422 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
  let x_424 : vec4<f32> = u_xlat3;
  let x_426 : vec4<f32> = vs_COLOR0;
  let x_431 : vec3<f32> = ((vec3<f32>(x_424.x, x_424.y, x_424.z) * vec3<f32>(x_426.x, x_426.y, x_426.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_432 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_436 : f32 = x_18.x_Metallic;
  let x_438 : f32 = x_18.x_Metallic;
  let x_440 : f32 = x_18.x_Metallic;
  let x_441 : vec3<f32> = vec3<f32>(x_436, x_438, x_440);
  let x_446 : vec4<f32> = u_xlat3;
  let x_451 : vec3<f32> = ((vec3<f32>(x_441.x, x_441.y, x_441.z) * vec3<f32>(x_446.x, x_446.y, x_446.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_452 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_455 : f32 = x_18.x_Metallic;
  u_xlat25 = ((-(x_455) * 0.959999979f) + 0.959999979f);
  let x_460 : f32 = u_xlat25;
  let x_462 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_460, x_460, x_460) * x_462);
  let x_466 : f32 = x_18.x_Glossiness;
  u_xlat25 = (-(x_466) + 1.0f);
  let x_469 : vec3<f32> = u_xlat0;
  let x_470 : f32 = u_xlat24;
  let x_473 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_469 * vec3<f32>(x_470, x_470, x_470)) + x_473);
  let x_475 : vec3<f32> = u_xlat0;
  let x_476 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_475, x_476);
  let x_478 : f32 = u_xlat24;
  u_xlat24 = max(x_478, 0.001f);
  let x_481 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_481);
  let x_483 : f32 = u_xlat24;
  let x_485 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_483, x_483, x_483) * x_485);
  let x_487 : vec3<f32> = u_xlat5;
  let x_488 : vec3<f32> = u_xlat2;
  u_xlat24 = dot(x_487, x_488);
  let x_490 : vec3<f32> = u_xlat5;
  let x_491 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(x_490, x_491);
  let x_495 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_495, 0.0f, 1.0f);
  let x_499 : vec3<f32> = u_xlat5;
  let x_500 : vec3<f32> = u_xlat0;
  u_xlat10 = dot(x_499, x_500);
  let x_502 : f32 = u_xlat10;
  u_xlat10 = clamp(x_502, 0.0f, 1.0f);
  let x_504 : vec3<f32> = u_xlat1;
  let x_505 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_504, x_505);
  let x_509 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_509, 0.0f, 1.0f);
  let x_514 : f32 = u_xlat0.x;
  let x_516 : f32 = u_xlat0.x;
  u_xlat8.x = (x_514 * x_516);
  let x_519 : vec3<f32> = u_xlat8;
  let x_521 : f32 = u_xlat25;
  u_xlat8.x = dot(vec2<f32>(x_519.x, x_519.x), vec2<f32>(x_521, x_521));
  let x_526 : f32 = u_xlat8.x;
  u_xlat8.x = (x_526 + -0.5f);
  let x_532 : f32 = u_xlat2.x;
  u_xlat16 = (-(x_532) + 1.0f);
  let x_535 : f32 = u_xlat16;
  let x_536 : f32 = u_xlat16;
  u_xlat1.x = (x_535 * x_536);
  let x_540 : f32 = u_xlat1.x;
  let x_542 : f32 = u_xlat1.x;
  u_xlat1.x = (x_540 * x_542);
  let x_545 : f32 = u_xlat16;
  let x_547 : f32 = u_xlat1.x;
  u_xlat16 = (x_545 * x_547);
  let x_550 : f32 = u_xlat8.x;
  let x_551 : f32 = u_xlat16;
  u_xlat16 = ((x_550 * x_551) + 1.0f);
  let x_554 : f32 = u_xlat24;
  u_xlat1.x = (-(abs(x_554)) + 1.0f);
  let x_561 : f32 = u_xlat1.x;
  let x_563 : f32 = u_xlat1.x;
  u_xlat9 = (x_561 * x_563);
  let x_565 : f32 = u_xlat9;
  let x_566 : f32 = u_xlat9;
  u_xlat9 = (x_565 * x_566);
  let x_569 : f32 = u_xlat1.x;
  let x_570 : f32 = u_xlat9;
  u_xlat1.x = (x_569 * x_570);
  let x_574 : f32 = u_xlat8.x;
  let x_576 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_574 * x_576) + 1.0f);
  let x_581 : f32 = u_xlat8.x;
  let x_582 : f32 = u_xlat16;
  u_xlat8.x = (x_581 * x_582);
  let x_585 : f32 = u_xlat25;
  let x_586 : f32 = u_xlat25;
  u_xlat16 = (x_585 * x_586);
  let x_588 : f32 = u_xlat16;
  u_xlat16 = max(x_588, 0.002f);
  let x_591 : f32 = u_xlat16;
  u_xlat1.x = (-(x_591) + 1.0f);
  let x_595 : f32 = u_xlat24;
  let x_598 : f32 = u_xlat1.x;
  let x_600 : f32 = u_xlat16;
  u_xlat9 = ((abs(x_595) * x_598) + x_600);
  let x_603 : f32 = u_xlat2.x;
  let x_605 : f32 = u_xlat1.x;
  let x_607 : f32 = u_xlat16;
  u_xlat1.x = ((x_603 * x_605) + x_607);
  let x_610 : f32 = u_xlat24;
  let x_613 : f32 = u_xlat1.x;
  u_xlat24 = (abs(x_610) * x_613);
  let x_616 : f32 = u_xlat2.x;
  let x_617 : f32 = u_xlat9;
  let x_619 : f32 = u_xlat24;
  u_xlat24 = ((x_616 * x_617) + x_619);
  let x_621 : f32 = u_xlat24;
  u_xlat24 = (x_621 + 0.00001f);
  let x_624 : f32 = u_xlat24;
  u_xlat24 = (0.5f / x_624);
  let x_626 : f32 = u_xlat16;
  let x_627 : f32 = u_xlat16;
  u_xlat16 = (x_626 * x_627);
  let x_629 : f32 = u_xlat10;
  let x_630 : f32 = u_xlat16;
  let x_632 : f32 = u_xlat10;
  u_xlat1.x = ((x_629 * x_630) + -(x_632));
  let x_637 : f32 = u_xlat1.x;
  let x_638 : f32 = u_xlat10;
  u_xlat1.x = ((x_637 * x_638) + 1.0f);
  let x_642 : f32 = u_xlat16;
  u_xlat16 = (x_642 * 0.318309873f);
  let x_646 : f32 = u_xlat1.x;
  let x_648 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_646 * x_648) + 0.0000001f);
  let x_653 : f32 = u_xlat16;
  let x_655 : f32 = u_xlat1.x;
  u_xlat16 = (x_653 / x_655);
  let x_657 : f32 = u_xlat16;
  let x_658 : f32 = u_xlat24;
  u_xlat8.y = (x_657 * x_658);
  let x_661 : vec3<f32> = u_xlat2;
  let x_663 : vec3<f32> = u_xlat8;
  let x_665 : vec2<f32> = (vec2<f32>(x_661.x, x_661.x) * vec2<f32>(x_663.x, x_663.y));
  let x_666 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_665.x, x_665.y, x_666.z);
  let x_669 : f32 = u_xlat8.y;
  u_xlat16 = (x_669 * 3.141592741f);
  let x_672 : f32 = u_xlat16;
  u_xlat16 = max(x_672, 0.0f);
  let x_674 : vec4<f32> = u_xlat3;
  let x_676 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(vec3<f32>(x_674.x, x_674.y, x_674.z), vec3<f32>(x_676.x, x_676.y, x_676.z));
  let x_680 : f32 = u_xlat24;
  u_xlatb24 = !((x_680 == 0.0f));
  let x_682 : bool = u_xlatb24;
  u_xlat24 = select(0.0f, 1.0f, x_682);
  let x_684 : f32 = u_xlat24;
  let x_685 : f32 = u_xlat16;
  u_xlat16 = (x_684 * x_685);
  let x_687 : vec3<f32> = u_xlat8;
  let x_689 : vec4<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_687.x, x_687.x, x_687.x) * vec3<f32>(x_689.x, x_689.y, x_689.z));
  let x_692 : vec4<f32> = u_xlat6;
  let x_694 : f32 = u_xlat16;
  u_xlat8 = (vec3<f32>(x_692.x, x_692.y, x_692.z) * vec3<f32>(x_694, x_694, x_694));
  let x_698 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_698) + 1.0f);
  let x_703 : f32 = u_xlat0.x;
  let x_705 : f32 = u_xlat0.x;
  u_xlat25 = (x_703 * x_705);
  let x_707 : f32 = u_xlat25;
  let x_708 : f32 = u_xlat25;
  u_xlat25 = (x_707 * x_708);
  let x_711 : f32 = u_xlat0.x;
  let x_712 : f32 = u_xlat25;
  u_xlat0.x = (x_711 * x_712);
  let x_715 : vec4<f32> = u_xlat3;
  u_xlat2 = (-(vec3<f32>(x_715.x, x_715.y, x_715.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_720 : vec3<f32> = u_xlat2;
  let x_721 : vec3<f32> = u_xlat0;
  let x_724 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_720 * vec3<f32>(x_721.x, x_721.x, x_721.x)) + vec3<f32>(x_724.x, x_724.y, x_724.z));
  let x_727 : vec3<f32> = u_xlat8;
  let x_728 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_727 * x_728);
  let x_730 : vec3<f32> = u_xlat4;
  let x_731 : vec3<f32> = u_xlat1;
  let x_733 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_730 * x_731) + x_733);
  let x_736 : f32 = vs_TEXCOORD8;
  let x_738 : f32 = x_18.x_ProjectionParams.y;
  u_xlat24 = (x_736 / x_738);
  let x_740 : f32 = u_xlat24;
  u_xlat24 = (-(x_740) + 1.0f);
  let x_743 : f32 = u_xlat24;
  let x_745 : f32 = x_18.x_ProjectionParams.z;
  u_xlat24 = (x_743 * x_745);
  let x_747 : f32 = u_xlat24;
  u_xlat24 = max(x_747, 0.0f);
  let x_749 : f32 = u_xlat24;
  let x_752 : f32 = x_18.unity_FogParams.x;
  u_xlat24 = (x_749 * x_752);
  let x_754 : f32 = u_xlat24;
  let x_755 : f32 = u_xlat24;
  u_xlat24 = (x_754 * -(x_755));
  let x_758 : f32 = u_xlat24;
  u_xlat24 = exp2(x_758);
  let x_762 : vec3<f32> = u_xlat0;
  let x_763 : f32 = u_xlat24;
  let x_765 : vec3<f32> = (x_762 * vec3<f32>(x_763, x_763, x_763));
  let x_766 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
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

