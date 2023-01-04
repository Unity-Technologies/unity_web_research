struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  x_LightPositionRange : vec4<f32>,
  x_LightProjectionParams : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
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

var<private> u_xlat27 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb2 : bool;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat30 : f32;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlatb11 : bool;

@group(0) @binding(5) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat20 : f32;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

@group(0) @binding(3) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlatb27 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_234 : vec3<f32>;
  var txVec0 : vec4<f32>;
  var txVec1 : vec4<f32>;
  var txVec2 : vec4<f32>;
  var txVec3 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD2;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat27 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat27;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_40 : vec3<f32> = vs_TEXCOORD2;
  let x_45 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_46 : vec3<f32> = (-(x_40) + x_45);
  let x_47 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_46.x, x_46.y, x_46.z, x_47.w);
  let x_50 : vec4<f32> = u_xlat2;
  let x_52 : vec4<f32> = u_xlat2;
  u_xlat28 = dot(vec3<f32>(x_50.x, x_50.y, x_50.z), vec3<f32>(x_52.x, x_52.y, x_52.z));
  let x_55 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_55);
  let x_58 : f32 = u_xlat28;
  let x_60 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_58, x_58, x_58) * vec3<f32>(x_60.x, x_60.y, x_60.z));
  let x_77 : vec2<f32> = vs_TEXCOORD0;
  let x_78 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_77);
  u_xlat4 = vec3<f32>(x_78.x, x_78.y, x_78.z);
  let x_80 : vec3<f32> = u_xlat4;
  let x_83 : vec4<f32> = x_18.x_Color;
  u_xlat4 = (x_80 * vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_87 : vec3<f32> = u_xlat4;
  let x_90 : vec4<f32> = vs_COLOR0;
  u_xlat5 = (x_87 * vec3<f32>(x_90.x, x_90.y, x_90.z));
  let x_94 : vec3<f32> = vs_TEXCOORD2;
  let x_98 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat6 = (vec3<f32>(x_94.y, x_94.y, x_94.y) * vec3<f32>(x_98.x, x_98.y, x_98.z));
  let x_102 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_104 : vec3<f32> = vs_TEXCOORD2;
  let x_107 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_102.x, x_102.y, x_102.z) * vec3<f32>(x_104.x, x_104.x, x_104.x)) + x_107);
  let x_111 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_113 : vec3<f32> = vs_TEXCOORD2;
  let x_116 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_111.x, x_111.y, x_111.z) * vec3<f32>(x_113.z, x_113.z, x_113.z)) + x_116);
  let x_118 : vec3<f32> = u_xlat6;
  let x_121 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat6 = (x_118 + vec3<f32>(x_121.x, x_121.y, x_121.z));
  let x_130 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat7.x = x_130;
  let x_134 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat7.y = x_134;
  let x_138 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat7.z = x_138;
  let x_140 : vec4<f32> = u_xlat2;
  let x_142 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_140.x, x_140.y, x_140.z), vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  let x_148 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_151 : vec3<f32> = (x_145 + -(vec3<f32>(x_148.x, x_148.y, x_148.z)));
  let x_152 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
  let x_154 : vec4<f32> = u_xlat2;
  let x_156 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_154.x, x_154.y, x_154.z), vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_161 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_161);
  let x_164 : f32 = u_xlat28;
  let x_167 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_164) + x_167);
  let x_172 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_174 : f32 = u_xlat2.x;
  let x_176 : f32 = u_xlat28;
  u_xlat28 = ((x_172 * x_174) + x_176);
  let x_178 : f32 = u_xlat28;
  let x_181 : f32 = x_18.x_LightShadowData.z;
  let x_184 : f32 = x_18.x_LightShadowData.w;
  u_xlat28 = ((x_178 * x_181) + x_184);
  let x_186 : f32 = u_xlat28;
  u_xlat28 = clamp(x_186, 0.0f, 1.0f);
  let x_195 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_195 == 1.0f);
  let x_197 : bool = u_xlatb2;
  if (x_197) {
    let x_201 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_201 == 1.0f);
    let x_204 : vec3<f32> = vs_TEXCOORD2;
    let x_208 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    u_xlat11 = (vec3<f32>(x_204.y, x_204.y, x_204.y) * vec3<f32>(x_208.x, x_208.y, x_208.z));
    let x_212 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_214 : vec3<f32> = vs_TEXCOORD2;
    let x_217 : vec3<f32> = u_xlat11;
    u_xlat11 = ((vec3<f32>(x_212.x, x_212.y, x_212.z) * vec3<f32>(x_214.x, x_214.x, x_214.x)) + x_217);
    let x_220 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_222 : vec3<f32> = vs_TEXCOORD2;
    let x_225 : vec3<f32> = u_xlat11;
    u_xlat11 = ((vec3<f32>(x_220.x, x_220.y, x_220.z) * vec3<f32>(x_222.z, x_222.z, x_222.z)) + x_225);
    let x_227 : vec3<f32> = u_xlat11;
    let x_229 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    u_xlat11 = (x_227 + vec3<f32>(x_229.x, x_229.y, x_229.z));
    let x_232 : bool = u_xlatb2;
    if (x_232) {
      let x_237 : vec3<f32> = u_xlat11;
      x_234 = x_237;
    } else {
      let x_239 : vec3<f32> = vs_TEXCOORD2;
      x_234 = x_239;
    }
    let x_240 : vec3<f32> = x_234;
    let x_241 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
    let x_243 : vec4<f32> = u_xlat2;
    let x_247 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_249 : vec3<f32> = (vec3<f32>(x_243.x, x_243.y, x_243.z) + -(x_247));
    let x_250 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
    let x_252 : vec4<f32> = u_xlat2;
    let x_256 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_257 : vec3<f32> = (vec3<f32>(x_252.x, x_252.y, x_252.z) * x_256);
    let x_258 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_258.x, x_257.x, x_257.y, x_257.z);
    let x_261 : f32 = u_xlat2.y;
    u_xlat11.x = ((x_261 * 0.25f) + 0.75f);
    let x_269 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat30 = ((x_269 * 0.5f) + 0.75f);
    let x_274 : f32 = u_xlat11.x;
    let x_275 : f32 = u_xlat30;
    u_xlat2.x = max(x_274, x_275);
    let x_286 : vec4<f32> = u_xlat2;
    let x_288 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_286.x, x_286.z, x_286.w));
    u_xlat2 = x_288;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_294 : vec4<f32> = u_xlat2;
  let x_297 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_294, x_297);
  let x_301 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_301, 0.0f, 1.0f);
  let x_305 : f32 = u_xlat28;
  u_xlatb11 = (x_305 < 0.99000001f);
  let x_308 : bool = u_xlatb11;
  if (x_308) {
    let x_311 : vec3<f32> = vs_TEXCOORD2;
    let x_313 : vec4<f32> = x_18.x_LightPositionRange;
    u_xlat11 = (x_311 + -(vec3<f32>(x_313.x, x_313.y, x_313.z)));
    let x_318 : f32 = u_xlat11.y;
    let x_321 : f32 = u_xlat11.x;
    u_xlat30 = max(abs(x_318), abs(x_321));
    let x_325 : f32 = u_xlat11.z;
    let x_327 : f32 = u_xlat30;
    u_xlat30 = max(abs(x_325), x_327);
    let x_329 : f32 = u_xlat30;
    let x_331 : f32 = x_18.x_LightProjectionParams.z;
    u_xlat30 = (x_329 + -(x_331));
    let x_334 : f32 = u_xlat30;
    u_xlat30 = max(x_334, 0.00001f);
    let x_337 : f32 = u_xlat30;
    let x_339 : f32 = x_18.x_LightProjectionParams.w;
    u_xlat30 = (x_337 * x_339);
    let x_342 : f32 = x_18.x_LightProjectionParams.y;
    let x_343 : f32 = u_xlat30;
    u_xlat30 = (x_342 / x_343);
    let x_345 : f32 = u_xlat30;
    let x_347 : f32 = x_18.x_LightProjectionParams.x;
    u_xlat30 = (x_345 + -(x_347));
    let x_350 : f32 = u_xlat30;
    u_xlat30 = (-(x_350) + 1.0f);
    let x_353 : vec3<f32> = u_xlat11;
    let x_356 : vec3<f32> = (x_353 + vec3<f32>(0.0078125f, 0.0078125f, 0.0078125f));
    let x_357 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
    let x_361 : vec4<f32> = u_xlat7;
    let x_362 : vec3<f32> = vec3<f32>(x_361.x, x_361.y, x_361.z);
    let x_363 : f32 = u_xlat30;
    txVec0 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363);
    let x_376 : vec4<f32> = txVec0;
    let x_378 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_376.xyz, x_376.w);
    u_xlat7.x = x_378;
    let x_381 : vec3<f32> = u_xlat11;
    u_xlat8 = (x_381 + vec3<f32>(-0.0078125f, -0.0078125f, 0.0078125f));
    let x_386 : vec3<f32> = u_xlat8;
    let x_387 : f32 = u_xlat30;
    txVec1 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387);
    let x_395 : vec4<f32> = txVec1;
    let x_397 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_395.xyz, x_395.w);
    u_xlat7.y = x_397;
    let x_399 : vec3<f32> = u_xlat11;
    u_xlat8 = (x_399 + vec3<f32>(-0.0078125f, 0.0078125f, -0.0078125f));
    let x_403 : vec3<f32> = u_xlat8;
    let x_404 : f32 = u_xlat30;
    txVec2 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404);
    let x_412 : vec4<f32> = txVec2;
    let x_414 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_412.xyz, x_412.w);
    u_xlat7.z = x_414;
    let x_416 : vec3<f32> = u_xlat11;
    u_xlat11 = (x_416 + vec3<f32>(0.0078125f, -0.0078125f, -0.0078125f));
    let x_420 : vec3<f32> = u_xlat11;
    let x_421 : f32 = u_xlat30;
    txVec3 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421);
    let x_429 : vec4<f32> = txVec3;
    let x_431 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_429.xyz, x_429.w);
    u_xlat7.w = x_431;
    let x_433 : vec4<f32> = u_xlat7;
    u_xlat11.x = dot(x_433, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    let x_439 : f32 = x_18.x_LightShadowData.x;
    u_xlat20 = (-(x_439) + 1.0f);
    let x_443 : f32 = u_xlat11.x;
    let x_444 : f32 = u_xlat20;
    let x_447 : f32 = x_18.x_LightShadowData.x;
    u_xlat11.x = ((x_443 * x_444) + x_447);
  } else {
    u_xlat11.x = 1.0f;
  }
  let x_453 : f32 = u_xlat11.x;
  let x_456 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_453) + x_456);
  let x_459 : f32 = u_xlat28;
  let x_461 : f32 = u_xlat2.x;
  let x_464 : f32 = u_xlat11.x;
  u_xlat28 = ((x_459 * x_461) + x_464);
  let x_466 : vec3<f32> = u_xlat6;
  let x_467 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(x_466, x_467);
  let x_475 : vec4<f32> = u_xlat2;
  let x_477 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_475.x, x_475.x));
  u_xlat2.x = x_477.x;
  let x_488 : vec3<f32> = u_xlat6;
  let x_489 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_488);
  u_xlat11.x = x_489.w;
  let x_493 : f32 = u_xlat11.x;
  let x_495 : f32 = u_xlat2.x;
  u_xlat2.x = (x_493 * x_495);
  let x_498 : f32 = u_xlat28;
  let x_500 : f32 = u_xlat2.x;
  u_xlat28 = (x_498 * x_500);
  let x_502 : f32 = u_xlat28;
  let x_506 : vec4<f32> = x_18.x_LightColor0;
  let x_508 : vec3<f32> = (vec3<f32>(x_502, x_502, x_502) * vec3<f32>(x_506.x, x_506.y, x_506.z));
  let x_509 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
  let x_512 : vec3<f32> = vs_TEXCOORD1;
  let x_513 : vec3<f32> = vs_TEXCOORD1;
  u_xlat28 = dot(x_512, x_513);
  let x_515 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_515);
  let x_517 : f32 = u_xlat28;
  let x_519 : vec3<f32> = vs_TEXCOORD1;
  u_xlat6 = (vec3<f32>(x_517, x_517, x_517) * x_519);
  let x_521 : vec3<f32> = u_xlat4;
  let x_522 : vec4<f32> = vs_COLOR0;
  u_xlat4 = ((x_521 * vec3<f32>(x_522.x, x_522.y, x_522.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_530 : f32 = x_18.x_Metallic;
  let x_532 : f32 = x_18.x_Metallic;
  let x_534 : f32 = x_18.x_Metallic;
  let x_535 : vec3<f32> = vec3<f32>(x_530, x_532, x_534);
  let x_540 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_535.x, x_535.y, x_535.z) * x_540) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_546 : f32 = x_18.x_Metallic;
  u_xlat28 = ((-(x_546) * 0.959999979f) + 0.959999979f);
  let x_551 : f32 = u_xlat28;
  let x_553 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_551, x_551, x_551) * x_553);
  let x_557 : f32 = x_18.x_Glossiness;
  u_xlat28 = (-(x_557) + 1.0f);
  let x_560 : vec3<f32> = u_xlat0;
  let x_561 : f32 = u_xlat27;
  let x_564 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_560 * vec3<f32>(x_561, x_561, x_561)) + x_564);
  let x_566 : vec3<f32> = u_xlat0;
  let x_567 : vec3<f32> = u_xlat0;
  u_xlat27 = dot(x_566, x_567);
  let x_569 : f32 = u_xlat27;
  u_xlat27 = max(x_569, 0.001f);
  let x_572 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_572);
  let x_574 : f32 = u_xlat27;
  let x_576 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_574, x_574, x_574) * x_576);
  let x_578 : vec3<f32> = u_xlat6;
  let x_579 : vec3<f32> = u_xlat3;
  u_xlat27 = dot(x_578, x_579);
  let x_582 : vec3<f32> = u_xlat6;
  let x_583 : vec3<f32> = u_xlat1;
  u_xlat29 = dot(x_582, x_583);
  let x_585 : f32 = u_xlat29;
  u_xlat29 = clamp(x_585, 0.0f, 1.0f);
  let x_587 : vec3<f32> = u_xlat6;
  let x_588 : vec3<f32> = u_xlat0;
  u_xlat3.x = dot(x_587, x_588);
  let x_592 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_592, 0.0f, 1.0f);
  let x_595 : vec3<f32> = u_xlat1;
  let x_596 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_595, x_596);
  let x_600 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_600, 0.0f, 1.0f);
  let x_605 : f32 = u_xlat0.x;
  let x_607 : f32 = u_xlat0.x;
  u_xlat9.x = (x_605 * x_607);
  let x_610 : vec3<f32> = u_xlat9;
  let x_612 : f32 = u_xlat28;
  u_xlat9.x = dot(vec2<f32>(x_610.x, x_610.x), vec2<f32>(x_612, x_612));
  let x_617 : f32 = u_xlat9.x;
  u_xlat9.x = (x_617 + -0.5f);
  let x_622 : f32 = u_xlat29;
  u_xlat18 = (-(x_622) + 1.0f);
  let x_625 : f32 = u_xlat18;
  let x_626 : f32 = u_xlat18;
  u_xlat1.x = (x_625 * x_626);
  let x_630 : f32 = u_xlat1.x;
  let x_632 : f32 = u_xlat1.x;
  u_xlat1.x = (x_630 * x_632);
  let x_635 : f32 = u_xlat18;
  let x_637 : f32 = u_xlat1.x;
  u_xlat18 = (x_635 * x_637);
  let x_640 : f32 = u_xlat9.x;
  let x_641 : f32 = u_xlat18;
  u_xlat18 = ((x_640 * x_641) + 1.0f);
  let x_644 : f32 = u_xlat27;
  u_xlat1.x = (-(abs(x_644)) + 1.0f);
  let x_651 : f32 = u_xlat1.x;
  let x_653 : f32 = u_xlat1.x;
  u_xlat10 = (x_651 * x_653);
  let x_655 : f32 = u_xlat10;
  let x_656 : f32 = u_xlat10;
  u_xlat10 = (x_655 * x_656);
  let x_659 : f32 = u_xlat1.x;
  let x_660 : f32 = u_xlat10;
  u_xlat1.x = (x_659 * x_660);
  let x_664 : f32 = u_xlat9.x;
  let x_666 : f32 = u_xlat1.x;
  u_xlat9.x = ((x_664 * x_666) + 1.0f);
  let x_671 : f32 = u_xlat9.x;
  let x_672 : f32 = u_xlat18;
  u_xlat9.x = (x_671 * x_672);
  let x_675 : f32 = u_xlat28;
  let x_676 : f32 = u_xlat28;
  u_xlat18 = (x_675 * x_676);
  let x_678 : f32 = u_xlat18;
  u_xlat18 = max(x_678, 0.002f);
  let x_681 : f32 = u_xlat18;
  u_xlat1.x = (-(x_681) + 1.0f);
  let x_685 : f32 = u_xlat27;
  let x_688 : f32 = u_xlat1.x;
  let x_690 : f32 = u_xlat18;
  u_xlat10 = ((abs(x_685) * x_688) + x_690);
  let x_692 : f32 = u_xlat29;
  let x_694 : f32 = u_xlat1.x;
  let x_696 : f32 = u_xlat18;
  u_xlat1.x = ((x_692 * x_694) + x_696);
  let x_699 : f32 = u_xlat27;
  let x_702 : f32 = u_xlat1.x;
  u_xlat27 = (abs(x_699) * x_702);
  let x_704 : f32 = u_xlat29;
  let x_705 : f32 = u_xlat10;
  let x_707 : f32 = u_xlat27;
  u_xlat27 = ((x_704 * x_705) + x_707);
  let x_709 : f32 = u_xlat27;
  u_xlat27 = (x_709 + 0.00001f);
  let x_711 : f32 = u_xlat27;
  u_xlat27 = (0.5f / x_711);
  let x_713 : f32 = u_xlat18;
  let x_714 : f32 = u_xlat18;
  u_xlat18 = (x_713 * x_714);
  let x_717 : f32 = u_xlat3.x;
  let x_718 : f32 = u_xlat18;
  let x_721 : f32 = u_xlat3.x;
  u_xlat1.x = ((x_717 * x_718) + -(x_721));
  let x_726 : f32 = u_xlat1.x;
  let x_728 : f32 = u_xlat3.x;
  u_xlat1.x = ((x_726 * x_728) + 1.0f);
  let x_732 : f32 = u_xlat18;
  u_xlat18 = (x_732 * 0.318309873f);
  let x_736 : f32 = u_xlat1.x;
  let x_738 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_736 * x_738) + 0.0000001f);
  let x_743 : f32 = u_xlat18;
  let x_745 : f32 = u_xlat1.x;
  u_xlat18 = (x_743 / x_745);
  let x_747 : f32 = u_xlat18;
  let x_748 : f32 = u_xlat27;
  u_xlat9.y = (x_747 * x_748);
  let x_751 : f32 = u_xlat29;
  let x_753 : vec3<f32> = u_xlat9;
  let x_755 : vec2<f32> = (vec2<f32>(x_751, x_751) * vec2<f32>(x_753.x, x_753.y));
  let x_756 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_755.x, x_755.y, x_756.z);
  let x_759 : f32 = u_xlat9.y;
  u_xlat18 = (x_759 * 3.141592741f);
  let x_762 : f32 = u_xlat18;
  u_xlat18 = max(x_762, 0.0f);
  let x_764 : vec3<f32> = u_xlat4;
  let x_765 : vec3<f32> = u_xlat4;
  u_xlat27 = dot(x_764, x_765);
  let x_768 : f32 = u_xlat27;
  u_xlatb27 = !((x_768 == 0.0f));
  let x_770 : bool = u_xlatb27;
  u_xlat27 = select(0.0f, 1.0f, x_770);
  let x_772 : f32 = u_xlat27;
  let x_773 : f32 = u_xlat18;
  u_xlat18 = (x_772 * x_773);
  let x_775 : vec3<f32> = u_xlat9;
  let x_777 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_775.x, x_775.x, x_775.x) * vec3<f32>(x_777.x, x_777.y, x_777.z));
  let x_780 : vec4<f32> = u_xlat2;
  let x_782 : f32 = u_xlat18;
  u_xlat9 = (vec3<f32>(x_780.x, x_780.y, x_780.z) * vec3<f32>(x_782, x_782, x_782));
  let x_786 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_786) + 1.0f);
  let x_791 : f32 = u_xlat0.x;
  let x_793 : f32 = u_xlat0.x;
  u_xlat28 = (x_791 * x_793);
  let x_795 : f32 = u_xlat28;
  let x_796 : f32 = u_xlat28;
  u_xlat28 = (x_795 * x_796);
  let x_799 : f32 = u_xlat0.x;
  let x_800 : f32 = u_xlat28;
  u_xlat0.x = (x_799 * x_800);
  let x_803 : vec3<f32> = u_xlat4;
  let x_806 : vec3<f32> = (-(x_803) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_807 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : vec4<f32> = u_xlat2;
  let x_811 : vec3<f32> = u_xlat0;
  let x_814 : vec3<f32> = u_xlat4;
  let x_815 : vec3<f32> = ((vec3<f32>(x_809.x, x_809.y, x_809.z) * vec3<f32>(x_811.x, x_811.x, x_811.x)) + x_814);
  let x_816 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
  let x_818 : vec3<f32> = u_xlat9;
  let x_819 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_818 * vec3<f32>(x_819.x, x_819.y, x_819.z));
  let x_824 : vec3<f32> = u_xlat5;
  let x_825 : vec3<f32> = u_xlat1;
  let x_827 : vec3<f32> = u_xlat0;
  let x_828 : vec3<f32> = ((x_824 * x_825) + x_827);
  let x_829 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
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

