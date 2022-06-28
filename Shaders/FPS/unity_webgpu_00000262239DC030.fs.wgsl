struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  x_Cutoff : f32,
  x_Cutoff2 : f32,
  x_EdgeSizeBot : f32,
  x_EdgeSizeTop : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
  x_bounds : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat24 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(1) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicSmooth : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat25 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat18 : f32;

@group(0) @binding(2) var x_Noise : texture_2d<f32>;

@group(0) @binding(10) var sampler_Noise : sampler;

var<private> u_xlat26 : f32;

var<private> u_xlatb26 : bool;

var<private> u_xlat19 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlat11 : vec3<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(4) var x_Normal : texture_2d<f32>;

@group(0) @binding(11) var sampler_Normal : sampler;

var<private> u_xlatb25 : bool;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb18 : bool;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(5) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ShadowMapTexture : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlatb24 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_436 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat0 = (-(x_12) + x_23);
  let x_27 : vec3<f32> = u_xlat0;
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_27, x_28);
  let x_30 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_30);
  let x_33 : f32 = u_xlat24;
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_33, x_33, x_33) * x_35);
  let x_52 : vec2<f32> = vs_TEXCOORD0;
  let x_53 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, x_52);
  let x_54 : vec2<f32> = vec2<f32>(x_53.x, x_53.w);
  let x_55 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_54.x, x_54.y, x_55.z, x_55.w);
  let x_58 : vec3<f32> = vs_TEXCOORD4;
  let x_64 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat3 = (vec3<f32>(x_58.z, x_58.y, x_58.x) + -(vec3<f32>(x_64.z, x_64.y, x_64.x)));
  let x_69 : vec3<f32> = u_xlat3;
  let x_73 : vec2<f32> = (vec2<f32>(x_69.x, x_69.z) * vec2<f32>(0.200000003f, 0.200000003f));
  let x_74 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_74.x, x_73.x, x_74.z, x_73.y);
  let x_80 : f32 = x_18.x_Cutoff;
  let x_82 : f32 = x_18.x_Cutoff;
  u_xlat25 = (x_80 + x_82);
  let x_87 : f32 = u_xlat3.y;
  let x_90 : f32 = u_xlat25;
  u_xlat4.x = ((x_87 * 2.0f) + x_90);
  let x_96 : f32 = u_xlat3.y;
  let x_100 : f32 = x_18.x_Cutoff;
  u_xlat5.x = ((x_96 * 4.0f) + x_100);
  let x_105 : f32 = x_18.x_bounds.y;
  u_xlat25 = (x_105 + 0.200000003f);
  let x_113 : vec4<f32> = u_xlat4;
  let x_115 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_113.x, x_113.y));
  u_xlat18 = x_115.x;
  let x_119 : f32 = u_xlat4.w;
  u_xlat5.y = x_119;
  let x_125 : vec3<f32> = u_xlat5;
  let x_127 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_125.x, x_125.y));
  u_xlat26 = x_127.x;
  let x_129 : f32 = u_xlat18;
  let x_131 : f32 = u_xlat26;
  u_xlat18 = dot(vec2<f32>(x_129, x_129), vec2<f32>(x_131, x_131));
  let x_134 : f32 = u_xlat25;
  u_xlat26 = (x_134 * 0.5f);
  let x_138 : f32 = x_18.x_Cutoff;
  let x_139 : f32 = u_xlat25;
  let x_141 : f32 = u_xlat26;
  u_xlat25 = ((x_138 * x_139) + -(x_141));
  let x_148 : f32 = u_xlat3.y;
  let x_149 : f32 = u_xlat25;
  u_xlatb26 = (x_148 >= x_149);
  let x_151 : f32 = u_xlat25;
  let x_154 : f32 = x_18.x_EdgeSizeBot;
  u_xlat3.x = (x_151 + -(x_154));
  let x_159 : f32 = u_xlat25;
  let x_161 : f32 = u_xlat3.x;
  u_xlat19 = (x_159 + -(x_161));
  let x_165 : f32 = u_xlat3.x;
  let x_168 : f32 = u_xlat3.y;
  u_xlat3.x = (-(x_165) + x_168);
  let x_172 : f32 = u_xlat19;
  u_xlat19 = (1.0f / x_172);
  let x_174 : f32 = u_xlat19;
  let x_176 : f32 = u_xlat3.x;
  u_xlat3.x = (x_174 * x_176);
  let x_180 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_180, 0.0f, 1.0f);
  let x_185 : f32 = u_xlat3.x;
  u_xlat19 = ((x_185 * -2.0f) + 3.0f);
  let x_191 : f32 = u_xlat3.x;
  let x_193 : f32 = u_xlat3.x;
  u_xlat3.x = (x_191 * x_193);
  let x_197 : f32 = u_xlat25;
  let x_200 : f32 = x_18.x_EdgeSizeTop;
  u_xlat27 = (x_197 + x_200);
  let x_202 : f32 = u_xlat25;
  let x_203 : f32 = u_xlat27;
  u_xlat25 = (x_202 + -(x_203));
  let x_207 : f32 = u_xlat27;
  let x_210 : f32 = u_xlat3.y;
  u_xlat11.x = (-(x_207) + x_210);
  let x_213 : f32 = u_xlat25;
  u_xlat25 = (1.0f / x_213);
  let x_215 : f32 = u_xlat25;
  let x_217 : f32 = u_xlat11.x;
  u_xlat25 = (x_215 * x_217);
  let x_219 : f32 = u_xlat25;
  u_xlat25 = clamp(x_219, 0.0f, 1.0f);
  let x_221 : f32 = u_xlat25;
  u_xlat11.x = ((x_221 * -2.0f) + 3.0f);
  let x_225 : f32 = u_xlat25;
  let x_226 : f32 = u_xlat25;
  u_xlat25 = (x_225 * x_226);
  let x_228 : f32 = u_xlat25;
  let x_230 : f32 = u_xlat11.x;
  u_xlat25 = (x_228 * x_230);
  let x_237 : vec2<f32> = vs_TEXCOORD0;
  let x_238 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_237);
  let x_239 : vec3<f32> = vec3<f32>(x_238.x, x_238.y, x_238.z);
  let x_240 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_242 : vec4<f32> = u_xlat4;
  let x_246 : vec4<f32> = x_18.x_Color;
  u_xlat5 = (vec3<f32>(x_242.x, x_242.y, x_242.z) * vec3<f32>(x_246.x, x_246.y, x_246.z));
  let x_255 : vec2<f32> = vs_TEXCOORD0;
  let x_256 : vec4<f32> = textureSample(x_Normal, sampler_Normal, x_255);
  u_xlat6 = vec3<f32>(x_256.x, x_256.y, x_256.w);
  let x_260 : f32 = u_xlat6.z;
  let x_262 : f32 = u_xlat6.x;
  u_xlat6.x = (x_260 * x_262);
  let x_265 : vec3<f32> = u_xlat6;
  let x_271 : vec2<f32> = ((vec2<f32>(x_265.x, x_265.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_272 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_271.x, x_271.y, x_272.z);
  let x_274 : vec3<f32> = u_xlat6;
  let x_276 : vec3<f32> = u_xlat6;
  u_xlat11.x = dot(vec2<f32>(x_274.x, x_274.y), vec2<f32>(x_276.x, x_276.y));
  let x_281 : f32 = u_xlat11.x;
  u_xlat11.x = min(x_281, 1.0f);
  let x_285 : f32 = u_xlat11.x;
  u_xlat11.x = (-(x_285) + 1.0f);
  let x_290 : f32 = u_xlat11.x;
  u_xlat6.z = sqrt(x_290);
  let x_293 : vec4<f32> = u_xlat2;
  let x_297 : f32 = x_18.x_Metallic;
  let x_300 : f32 = x_18.x_Glossiness;
  let x_302 : vec2<f32> = (vec2<f32>(x_293.x, x_293.y) * vec2<f32>(x_297, x_300));
  let x_303 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_302.x, x_302.y, x_303.z, x_303.w);
  let x_305 : f32 = u_xlat19;
  let x_308 : f32 = u_xlat3.x;
  u_xlat3.x = ((-(x_305) * x_308) + 1.0f);
  let x_313 : f32 = u_xlat2.x;
  let x_315 : f32 = u_xlat3.x;
  u_xlat2.x = (x_313 * x_315);
  let x_318 : bool = u_xlatb26;
  u_xlat26 = select(1.0f, 0.0f, x_318);
  let x_320 : f32 = u_xlat18;
  let x_321 : f32 = u_xlat25;
  let x_323 : f32 = u_xlat26;
  u_xlat25 = ((x_320 * x_321) + x_323);
  let x_325 : f32 = u_xlat25;
  let x_327 : f32 = x_18.x_Cutoff;
  u_xlat25 = (x_325 + -(x_327));
  let x_330 : f32 = u_xlat25;
  let x_333 : f32 = x_18.x_Cutoff2;
  u_xlat25 = (x_330 + -(x_333));
  let x_337 : f32 = u_xlat25;
  u_xlatb25 = (x_337 < 0.0f);
  let x_339 : bool = u_xlatb25;
  if (((select(0i, 1i, x_339) * -1i) != 0i)) {
    discard;
  }
  let x_351 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat7.x = x_351;
  let x_354 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat7.y = x_354;
  let x_358 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat7.z = x_358;
  let x_360 : vec3<f32> = u_xlat0;
  let x_361 : vec4<f32> = u_xlat7;
  u_xlat25 = dot(x_360, vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : vec3<f32> = vs_TEXCOORD4;
  let x_367 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  u_xlat11 = (x_364 + -(vec3<f32>(x_367.x, x_367.y, x_367.z)));
  let x_371 : vec3<f32> = u_xlat11;
  let x_372 : vec3<f32> = u_xlat11;
  u_xlat18 = dot(x_371, x_372);
  let x_374 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_374);
  let x_376 : f32 = u_xlat25;
  let x_378 : f32 = u_xlat18;
  u_xlat18 = (-(x_376) + x_378);
  let x_381 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_382 : f32 = u_xlat18;
  let x_384 : f32 = u_xlat25;
  u_xlat25 = ((x_381 * x_382) + x_384);
  let x_386 : f32 = u_xlat25;
  let x_388 : f32 = x_18.x_LightShadowData.z;
  let x_391 : f32 = x_18.x_LightShadowData.w;
  u_xlat25 = ((x_386 * x_388) + x_391);
  let x_393 : f32 = u_xlat25;
  u_xlat25 = clamp(x_393, 0.0f, 1.0f);
  let x_398 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb18 = (x_398 == 1.0f);
  let x_400 : bool = u_xlatb18;
  if (x_400) {
    let x_404 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb18 = (x_404 == 1.0f);
    let x_406 : vec3<f32> = vs_TEXCOORD4;
    let x_410 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    u_xlat11 = (vec3<f32>(x_406.y, x_406.y, x_406.y) * vec3<f32>(x_410.x, x_410.y, x_410.z));
    let x_414 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_416 : vec3<f32> = vs_TEXCOORD4;
    let x_419 : vec3<f32> = u_xlat11;
    u_xlat11 = ((vec3<f32>(x_414.x, x_414.y, x_414.z) * vec3<f32>(x_416.x, x_416.x, x_416.x)) + x_419);
    let x_422 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_424 : vec3<f32> = vs_TEXCOORD4;
    let x_427 : vec3<f32> = u_xlat11;
    u_xlat11 = ((vec3<f32>(x_422.x, x_422.y, x_422.z) * vec3<f32>(x_424.z, x_424.z, x_424.z)) + x_427);
    let x_429 : vec3<f32> = u_xlat11;
    let x_431 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    u_xlat11 = (x_429 + vec3<f32>(x_431.x, x_431.y, x_431.z));
    let x_434 : bool = u_xlatb18;
    if (x_434) {
      let x_439 : vec3<f32> = u_xlat11;
      x_436 = x_439;
    } else {
      let x_441 : vec3<f32> = vs_TEXCOORD4;
      x_436 = x_441;
    }
    let x_442 : vec3<f32> = x_436;
    u_xlat11 = x_442;
    let x_443 : vec3<f32> = u_xlat11;
    let x_446 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    u_xlat11 = (x_443 + -(x_446));
    let x_449 : vec3<f32> = u_xlat11;
    let x_452 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_453 : vec3<f32> = (x_449 * x_452);
    let x_454 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_454.x, x_453.x, x_453.y, x_453.z);
    let x_457 : f32 = u_xlat7.y;
    u_xlat18 = ((x_457 * 0.25f) + 0.75f);
    let x_463 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat26 = ((x_463 * 0.5f) + 0.75f);
    let x_466 : f32 = u_xlat26;
    let x_467 : f32 = u_xlat18;
    u_xlat7.x = max(x_466, x_467);
    let x_478 : vec4<f32> = u_xlat7;
    let x_480 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_478.x, x_478.z, x_478.w));
    u_xlat7 = x_480;
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
    u_xlat7.w = 1.0f;
  }
  let x_486 : vec4<f32> = u_xlat7;
  let x_488 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat18 = dot(x_486, x_488);
  let x_490 : f32 = u_xlat18;
  u_xlat18 = clamp(x_490, 0.0f, 1.0f);
  let x_494 : vec4<f32> = vs_TEXCOORD6;
  let x_496 : vec4<f32> = vs_TEXCOORD6;
  let x_498 : vec2<f32> = (vec2<f32>(x_494.x, x_494.y) / vec2<f32>(x_496.w, x_496.w));
  let x_499 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_498.x, x_498.y, x_499.z);
  let x_506 : vec3<f32> = u_xlat11;
  let x_508 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_506.x, x_506.y));
  u_xlat26 = x_508.x;
  let x_510 : f32 = u_xlat26;
  let x_512 : f32 = u_xlat18;
  u_xlat18 = (-(x_510) + x_512);
  let x_514 : f32 = u_xlat25;
  let x_515 : f32 = u_xlat18;
  let x_517 : f32 = u_xlat26;
  u_xlat25 = ((x_514 * x_515) + x_517);
  let x_520 : vec3<f32> = vs_TEXCOORD1;
  let x_521 : vec3<f32> = u_xlat6;
  u_xlat7.x = dot(x_520, x_521);
  let x_525 : vec3<f32> = vs_TEXCOORD2;
  let x_526 : vec3<f32> = u_xlat6;
  u_xlat7.y = dot(x_525, x_526);
  let x_530 : vec3<f32> = vs_TEXCOORD3;
  let x_531 : vec3<f32> = u_xlat6;
  u_xlat7.z = dot(x_530, x_531);
  let x_534 : vec4<f32> = u_xlat7;
  let x_536 : vec4<f32> = u_xlat7;
  u_xlat18 = dot(vec3<f32>(x_534.x, x_534.y, x_534.z), vec3<f32>(x_536.x, x_536.y, x_536.z));
  let x_539 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_539);
  let x_541 : f32 = u_xlat18;
  let x_543 : vec4<f32> = u_xlat7;
  u_xlat11 = (vec3<f32>(x_541, x_541, x_541) * vec3<f32>(x_543.x, x_543.y, x_543.z));
  let x_546 : f32 = u_xlat25;
  let x_550 : vec4<f32> = x_18.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_546, x_546, x_546) * vec3<f32>(x_550.x, x_550.y, x_550.z));
  let x_553 : vec4<f32> = u_xlat4;
  let x_556 : vec4<f32> = x_18.x_Color;
  let x_561 : vec3<f32> = ((vec3<f32>(x_553.x, x_553.y, x_553.z) * vec3<f32>(x_556.x, x_556.y, x_556.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_562 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
  let x_564 : vec4<f32> = u_xlat2;
  let x_566 : vec4<f32> = u_xlat4;
  let x_571 : vec3<f32> = ((vec3<f32>(x_564.x, x_564.x, x_564.x) * vec3<f32>(x_566.x, x_566.y, x_566.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_572 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_575 : f32 = u_xlat2.x;
  u_xlat25 = ((-(x_575) * 0.959999979f) + 0.959999979f);
  let x_580 : f32 = u_xlat25;
  let x_582 : vec3<f32> = u_xlat5;
  let x_583 : vec3<f32> = (vec3<f32>(x_580, x_580, x_580) * x_582);
  let x_584 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_583.x, x_584.y, x_583.y, x_583.z);
  let x_587 : f32 = u_xlat2.y;
  let x_590 : f32 = u_xlat3.x;
  u_xlat25 = ((-(x_587) * x_590) + 1.0f);
  let x_593 : vec3<f32> = u_xlat0;
  let x_594 : f32 = u_xlat24;
  let x_598 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_593 * vec3<f32>(x_594, x_594, x_594)) + vec3<f32>(x_598.x, x_598.y, x_598.z));
  let x_601 : vec3<f32> = u_xlat0;
  let x_602 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_601, x_602);
  let x_604 : f32 = u_xlat24;
  u_xlat24 = max(x_604, 0.001f);
  let x_607 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_607);
  let x_609 : f32 = u_xlat24;
  let x_611 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_609, x_609, x_609) * x_611);
  let x_613 : vec3<f32> = u_xlat11;
  let x_614 : vec3<f32> = u_xlat1;
  u_xlat24 = dot(x_613, x_614);
  let x_616 : vec3<f32> = u_xlat11;
  let x_618 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_616, vec3<f32>(x_618.x, x_618.y, x_618.z));
  let x_623 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_623, 0.0f, 1.0f);
  let x_627 : vec3<f32> = u_xlat11;
  let x_628 : vec3<f32> = u_xlat0;
  u_xlat9 = dot(x_627, x_628);
  let x_630 : f32 = u_xlat9;
  u_xlat9 = clamp(x_630, 0.0f, 1.0f);
  let x_633 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_635 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_633.x, x_633.y, x_633.z), x_635);
  let x_639 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_639, 0.0f, 1.0f);
  let x_644 : f32 = u_xlat0.x;
  let x_646 : f32 = u_xlat0.x;
  u_xlat8.x = (x_644 * x_646);
  let x_649 : vec3<f32> = u_xlat8;
  let x_651 : f32 = u_xlat25;
  u_xlat8.x = dot(vec2<f32>(x_649.x, x_649.x), vec2<f32>(x_651, x_651));
  let x_656 : f32 = u_xlat8.x;
  u_xlat8.x = (x_656 + -0.5f);
  let x_662 : f32 = u_xlat1.x;
  u_xlat16 = (-(x_662) + 1.0f);
  let x_666 : f32 = u_xlat16;
  let x_667 : f32 = u_xlat16;
  u_xlat17 = (x_666 * x_667);
  let x_669 : f32 = u_xlat17;
  let x_670 : f32 = u_xlat17;
  u_xlat17 = (x_669 * x_670);
  let x_672 : f32 = u_xlat16;
  let x_673 : f32 = u_xlat17;
  u_xlat16 = (x_672 * x_673);
  let x_676 : f32 = u_xlat8.x;
  let x_677 : f32 = u_xlat16;
  u_xlat16 = ((x_676 * x_677) + 1.0f);
  let x_680 : f32 = u_xlat24;
  u_xlat17 = (-(abs(x_680)) + 1.0f);
  let x_685 : f32 = u_xlat17;
  let x_686 : f32 = u_xlat17;
  u_xlat10 = (x_685 * x_686);
  let x_688 : f32 = u_xlat10;
  let x_689 : f32 = u_xlat10;
  u_xlat10 = (x_688 * x_689);
  let x_691 : f32 = u_xlat17;
  let x_692 : f32 = u_xlat10;
  u_xlat17 = (x_691 * x_692);
  let x_695 : f32 = u_xlat8.x;
  let x_696 : f32 = u_xlat17;
  u_xlat8.x = ((x_695 * x_696) + 1.0f);
  let x_701 : f32 = u_xlat8.x;
  let x_702 : f32 = u_xlat16;
  u_xlat8.x = (x_701 * x_702);
  let x_705 : f32 = u_xlat25;
  let x_706 : f32 = u_xlat25;
  u_xlat16 = (x_705 * x_706);
  let x_708 : f32 = u_xlat16;
  u_xlat16 = max(x_708, 0.002f);
  let x_711 : f32 = u_xlat16;
  u_xlat17 = (-(x_711) + 1.0f);
  let x_714 : f32 = u_xlat24;
  let x_716 : f32 = u_xlat17;
  let x_718 : f32 = u_xlat16;
  u_xlat25 = ((abs(x_714) * x_716) + x_718);
  let x_721 : f32 = u_xlat1.x;
  let x_722 : f32 = u_xlat17;
  let x_724 : f32 = u_xlat16;
  u_xlat17 = ((x_721 * x_722) + x_724);
  let x_726 : f32 = u_xlat24;
  let x_728 : f32 = u_xlat17;
  u_xlat24 = (abs(x_726) * x_728);
  let x_731 : f32 = u_xlat1.x;
  let x_732 : f32 = u_xlat25;
  let x_734 : f32 = u_xlat24;
  u_xlat24 = ((x_731 * x_732) + x_734);
  let x_736 : f32 = u_xlat24;
  u_xlat24 = (x_736 + 0.00001f);
  let x_739 : f32 = u_xlat24;
  u_xlat24 = (0.5f / x_739);
  let x_741 : f32 = u_xlat16;
  let x_742 : f32 = u_xlat16;
  u_xlat16 = (x_741 * x_742);
  let x_744 : f32 = u_xlat9;
  let x_745 : f32 = u_xlat16;
  let x_747 : f32 = u_xlat9;
  u_xlat17 = ((x_744 * x_745) + -(x_747));
  let x_750 : f32 = u_xlat17;
  let x_751 : f32 = u_xlat9;
  u_xlat9 = ((x_750 * x_751) + 1.0f);
  let x_754 : f32 = u_xlat16;
  u_xlat16 = (x_754 * 0.318309873f);
  let x_757 : f32 = u_xlat9;
  let x_758 : f32 = u_xlat9;
  u_xlat9 = ((x_757 * x_758) + 0.0000001f);
  let x_762 : f32 = u_xlat16;
  let x_763 : f32 = u_xlat9;
  u_xlat16 = (x_762 / x_763);
  let x_765 : f32 = u_xlat16;
  let x_766 : f32 = u_xlat24;
  u_xlat8.y = (x_765 * x_766);
  let x_769 : vec3<f32> = u_xlat1;
  let x_771 : vec3<f32> = u_xlat8;
  let x_773 : vec2<f32> = (vec2<f32>(x_769.x, x_769.x) * vec2<f32>(x_771.x, x_771.y));
  let x_774 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_773.x, x_773.y, x_774.z);
  let x_777 : f32 = u_xlat8.y;
  u_xlat16 = (x_777 * 3.141592741f);
  let x_780 : f32 = u_xlat16;
  u_xlat16 = max(x_780, 0.0f);
  let x_782 : vec4<f32> = u_xlat4;
  let x_784 : vec4<f32> = u_xlat4;
  u_xlat24 = dot(vec3<f32>(x_782.x, x_782.y, x_782.z), vec3<f32>(x_784.x, x_784.y, x_784.z));
  let x_788 : f32 = u_xlat24;
  u_xlatb24 = !((x_788 == 0.0f));
  let x_790 : bool = u_xlatb24;
  u_xlat24 = select(0.0f, 1.0f, x_790);
  let x_792 : f32 = u_xlat24;
  let x_793 : f32 = u_xlat16;
  u_xlat16 = (x_792 * x_793);
  let x_795 : vec3<f32> = u_xlat8;
  let x_797 : vec3<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_795.x, x_795.x, x_795.x) * x_797);
  let x_799 : vec3<f32> = u_xlat6;
  let x_800 : f32 = u_xlat16;
  u_xlat8 = (x_799 * vec3<f32>(x_800, x_800, x_800));
  let x_804 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_804) + 1.0f);
  let x_809 : f32 = u_xlat0.x;
  let x_811 : f32 = u_xlat0.x;
  u_xlat25 = (x_809 * x_811);
  let x_813 : f32 = u_xlat25;
  let x_814 : f32 = u_xlat25;
  u_xlat25 = (x_813 * x_814);
  let x_817 : f32 = u_xlat0.x;
  let x_818 : f32 = u_xlat25;
  u_xlat0.x = (x_817 * x_818);
  let x_821 : vec4<f32> = u_xlat4;
  u_xlat3 = (-(vec3<f32>(x_821.x, x_821.y, x_821.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_826 : vec3<f32> = u_xlat3;
  let x_827 : vec3<f32> = u_xlat0;
  let x_830 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_826 * vec3<f32>(x_827.x, x_827.x, x_827.x)) + vec3<f32>(x_830.x, x_830.y, x_830.z));
  let x_833 : vec3<f32> = u_xlat8;
  let x_834 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_833 * x_834);
  let x_838 : vec4<f32> = u_xlat2;
  let x_840 : vec3<f32> = u_xlat1;
  let x_842 : vec3<f32> = u_xlat0;
  let x_843 : vec3<f32> = ((vec3<f32>(x_838.x, x_838.z, x_838.w) * x_840) + x_842);
  let x_844 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

