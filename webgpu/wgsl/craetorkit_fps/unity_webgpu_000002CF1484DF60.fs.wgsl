struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
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
  x_Color : vec4<f32>,
  x_BumpScale : f32,
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(4)
  padding_3 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(4) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(6) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat25 : f32;
  var u_xlatb25 : bool;
  var x_342 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlatb26 : bool;
  var txVec0 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var txVec1 : vec4<f32>;
  var txVec2 : vec4<f32>;
  var txVec3 : vec4<f32>;
  var u_xlat27 : f32;
  var u_xlat18 : f32;
  var u_xlat11 : f32;
  var u_xlat19 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_24.x, x_24.y));
  u_xlat0 = vec3<f32>(x_26.x, x_26.y, x_26.z);
  let x_29 : vec3<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_33.x_Color;
  u_xlat1 = (x_29 * vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_42 : vec4<f32> = x_33.x_Color;
  let x_44 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_42.x, x_42.y, x_42.z) * x_44) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_52 : f32 = x_33.x_Metallic;
  let x_54 : f32 = x_33.x_Metallic;
  let x_56 : f32 = x_33.x_Metallic;
  let x_57 : vec3<f32> = vec3<f32>(x_52, x_54, x_56);
  let x_62 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_57.x, x_57.y, x_57.z) * x_62) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_70 : f32 = x_33.x_Metallic;
  u_xlat24 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_75 : f32 = u_xlat24;
  let x_77 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_75, x_75, x_75) * x_77);
  let x_86 : vec4<f32> = vs_TEXCOORD0;
  let x_88 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_86.x, x_86.y));
  let x_89 : vec3<f32> = vec3<f32>(x_88.x, x_88.y, x_88.w);
  let x_90 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_89.x, x_89.y, x_89.z, x_90.w);
  let x_95 : f32 = u_xlat2.z;
  let x_98 : f32 = u_xlat2.x;
  u_xlat2.x = (x_95 * x_98);
  let x_101 : vec4<f32> = u_xlat2;
  let x_108 : vec2<f32> = ((vec2<f32>(x_101.x, x_101.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_109 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_109.w);
  let x_111 : vec4<f32> = u_xlat2;
  let x_115 : f32 = x_33.x_BumpScale;
  let x_117 : vec2<f32> = (vec2<f32>(x_111.x, x_111.y) * vec2<f32>(x_115, x_115));
  let x_118 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_117.x, x_117.y, x_118.z, x_118.w);
  let x_120 : vec4<f32> = u_xlat2;
  let x_122 : vec4<f32> = u_xlat2;
  u_xlat24 = dot(vec2<f32>(x_120.x, x_120.y), vec2<f32>(x_122.x, x_122.y));
  let x_125 : f32 = u_xlat24;
  u_xlat24 = min(x_125, 1.0f);
  let x_128 : f32 = u_xlat24;
  u_xlat24 = (-(x_128) + 1.0f);
  let x_131 : f32 = u_xlat24;
  u_xlat24 = sqrt(x_131);
  let x_134 : vec4<f32> = u_xlat2;
  let x_137 : vec4<f32> = vs_TEXCOORD3;
  u_xlat10 = (vec3<f32>(x_134.y, x_134.y, x_134.y) * vec3<f32>(x_137.x, x_137.y, x_137.z));
  let x_141 : vec4<f32> = vs_TEXCOORD2;
  let x_143 : vec4<f32> = u_xlat2;
  let x_146 : vec3<f32> = u_xlat10;
  let x_147 : vec3<f32> = ((vec3<f32>(x_141.x, x_141.y, x_141.z) * vec3<f32>(x_143.x, x_143.x, x_143.x)) + x_146);
  let x_148 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_151 : vec4<f32> = vs_TEXCOORD4;
  let x_153 : f32 = u_xlat24;
  let x_156 : vec4<f32> = u_xlat2;
  let x_158 : vec3<f32> = ((vec3<f32>(x_151.x, x_151.y, x_151.z) * vec3<f32>(x_153, x_153, x_153)) + vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_159 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_161 : vec4<f32> = u_xlat2;
  let x_163 : vec4<f32> = u_xlat2;
  u_xlat24 = dot(vec3<f32>(x_161.x, x_161.y, x_161.z), vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_166);
  let x_168 : f32 = u_xlat24;
  let x_170 : vec4<f32> = u_xlat2;
  let x_172 : vec3<f32> = (vec3<f32>(x_168, x_168, x_168) * vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_176 : vec4<f32> = vs_TEXCOORD1;
  let x_178 : vec4<f32> = vs_TEXCOORD1;
  u_xlat24 = dot(vec3<f32>(x_176.x, x_176.y, x_176.z), vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_181);
  let x_184 : f32 = u_xlat24;
  let x_186 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_184, x_184, x_184) * vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_192 : vec3<f32> = vs_TEXCOORD5;
  let x_197 : vec4<f32> = x_33.unity_WorldToLight[1i];
  u_xlat4 = (vec3<f32>(x_192.y, x_192.y, x_192.y) * vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_202 : vec4<f32> = x_33.unity_WorldToLight[0i];
  let x_204 : vec3<f32> = vs_TEXCOORD5;
  let x_207 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_202.x, x_202.y, x_202.z) * vec3<f32>(x_204.x, x_204.x, x_204.x)) + x_207);
  let x_211 : vec4<f32> = x_33.unity_WorldToLight[2i];
  let x_213 : vec3<f32> = vs_TEXCOORD5;
  let x_216 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_211.x, x_211.y, x_211.z) * vec3<f32>(x_213.z, x_213.z, x_213.z)) + x_216);
  let x_218 : vec3<f32> = u_xlat4;
  let x_221 : vec4<f32> = x_33.unity_WorldToLight[3i];
  u_xlat4 = (x_218 + vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_225 : vec3<f32> = vs_TEXCOORD5;
  let x_229 : vec3<f32> = x_33.x_WorldSpaceCameraPos;
  let x_230 : vec3<f32> = (-(x_225) + x_229);
  let x_231 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_236 : f32 = x_33.unity_MatrixV[0i].z;
  u_xlat6.x = x_236;
  let x_239 : f32 = x_33.unity_MatrixV[1i].z;
  u_xlat6.y = x_239;
  let x_243 : f32 = x_33.unity_MatrixV[2i].z;
  u_xlat6.z = x_243;
  let x_245 : vec4<f32> = u_xlat5;
  let x_247 : vec4<f32> = u_xlat6;
  u_xlat24 = dot(vec3<f32>(x_245.x, x_245.y, x_245.z), vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_250 : vec3<f32> = vs_TEXCOORD5;
  let x_253 : vec4<f32> = x_33.unity_ShadowFadeCenterAndType;
  let x_256 : vec3<f32> = (x_250 + -(vec3<f32>(x_253.x, x_253.y, x_253.z)));
  let x_257 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
  let x_260 : vec4<f32> = u_xlat5;
  let x_262 : vec4<f32> = u_xlat5;
  u_xlat25 = dot(vec3<f32>(x_260.x, x_260.y, x_260.z), vec3<f32>(x_262.x, x_262.y, x_262.z));
  let x_265 : f32 = u_xlat25;
  u_xlat25 = sqrt(x_265);
  let x_267 : f32 = u_xlat24;
  let x_269 : f32 = u_xlat25;
  u_xlat25 = (-(x_267) + x_269);
  let x_273 : f32 = x_33.unity_ShadowFadeCenterAndType.w;
  let x_274 : f32 = u_xlat25;
  let x_276 : f32 = u_xlat24;
  u_xlat24 = ((x_273 * x_274) + x_276);
  let x_278 : f32 = u_xlat24;
  let x_281 : f32 = x_33.x_LightShadowData.z;
  let x_284 : f32 = x_33.x_LightShadowData.w;
  u_xlat24 = ((x_278 * x_281) + x_284);
  let x_286 : f32 = u_xlat24;
  u_xlat24 = clamp(x_286, 0.0f, 1.0f);
  let x_294 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb25 = (x_294 == 1.0f);
  let x_296 : bool = u_xlatb25;
  if (x_296) {
    let x_300 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb25 = (x_300 == 1.0f);
    let x_302 : vec3<f32> = vs_TEXCOORD5;
    let x_306 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_308 : vec3<f32> = (vec3<f32>(x_302.y, x_302.y, x_302.y) * vec3<f32>(x_306.x, x_306.y, x_306.z));
    let x_309 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
    let x_312 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_314 : vec3<f32> = vs_TEXCOORD5;
    let x_317 : vec4<f32> = u_xlat5;
    let x_319 : vec3<f32> = ((vec3<f32>(x_312.x, x_312.y, x_312.z) * vec3<f32>(x_314.x, x_314.x, x_314.x)) + vec3<f32>(x_317.x, x_317.y, x_317.z));
    let x_320 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
    let x_323 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_325 : vec3<f32> = vs_TEXCOORD5;
    let x_328 : vec4<f32> = u_xlat5;
    let x_330 : vec3<f32> = ((vec3<f32>(x_323.x, x_323.y, x_323.z) * vec3<f32>(x_325.z, x_325.z, x_325.z)) + vec3<f32>(x_328.x, x_328.y, x_328.z));
    let x_331 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
    let x_333 : vec4<f32> = u_xlat5;
    let x_336 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_338 : vec3<f32> = (vec3<f32>(x_333.x, x_333.y, x_333.z) + vec3<f32>(x_336.x, x_336.y, x_336.z));
    let x_339 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
    let x_341 : bool = u_xlatb25;
    if (x_341) {
      let x_345 : vec4<f32> = u_xlat5;
      x_342 = vec3<f32>(x_345.x, x_345.y, x_345.z);
    } else {
      let x_348 : vec3<f32> = vs_TEXCOORD5;
      x_342 = x_348;
    }
    let x_349 : vec3<f32> = x_342;
    let x_350 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
    let x_352 : vec4<f32> = u_xlat5;
    let x_356 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_358 : vec3<f32> = (vec3<f32>(x_352.x, x_352.y, x_352.z) + -(x_356));
    let x_359 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
    let x_361 : vec4<f32> = u_xlat5;
    let x_365 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_366 : vec3<f32> = (vec3<f32>(x_361.x, x_361.y, x_361.z) * x_365);
    let x_367 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_367.x, x_366.x, x_366.y, x_366.z);
    let x_370 : f32 = u_xlat5.y;
    u_xlat25 = ((x_370 * 0.25f) + 0.75f);
    let x_377 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat26 = ((x_377 * 0.5f) + 0.75f);
    let x_381 : f32 = u_xlat25;
    let x_382 : f32 = u_xlat26;
    u_xlat5.x = max(x_381, x_382);
    let x_393 : vec4<f32> = u_xlat5;
    let x_395 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_393.x, x_393.z, x_393.w));
    u_xlat5 = x_395;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_401 : vec4<f32> = u_xlat5;
  let x_403 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat25 = dot(x_401, x_403);
  let x_405 : f32 = u_xlat25;
  u_xlat25 = clamp(x_405, 0.0f, 1.0f);
  let x_408 : f32 = u_xlat24;
  u_xlatb26 = (x_408 < 0.99000001f);
  let x_411 : bool = u_xlatb26;
  if (x_411) {
    let x_414 : vec3<f32> = vs_TEXCOORD5;
    let x_416 : vec4<f32> = x_33.x_LightPositionRange;
    let x_419 : vec3<f32> = (x_414 + -(vec3<f32>(x_416.x, x_416.y, x_416.z)));
    let x_420 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
    let x_423 : f32 = u_xlat5.y;
    let x_426 : f32 = u_xlat5.x;
    u_xlat26 = max(abs(x_423), abs(x_426));
    let x_430 : f32 = u_xlat5.z;
    let x_432 : f32 = u_xlat26;
    u_xlat26 = max(abs(x_430), x_432);
    let x_434 : f32 = u_xlat26;
    let x_436 : f32 = x_33.x_LightProjectionParams.z;
    u_xlat26 = (x_434 + -(x_436));
    let x_439 : f32 = u_xlat26;
    u_xlat26 = max(x_439, 0.00001f);
    let x_442 : f32 = u_xlat26;
    let x_444 : f32 = x_33.x_LightProjectionParams.w;
    u_xlat26 = (x_442 * x_444);
    let x_447 : f32 = x_33.x_LightProjectionParams.y;
    let x_448 : f32 = u_xlat26;
    u_xlat26 = (x_447 / x_448);
    let x_450 : f32 = u_xlat26;
    let x_452 : f32 = x_33.x_LightProjectionParams.x;
    u_xlat26 = (x_450 + -(x_452));
    let x_455 : f32 = u_xlat26;
    u_xlat26 = (-(x_455) + 1.0f);
    let x_458 : vec4<f32> = u_xlat5;
    let x_462 : vec3<f32> = (vec3<f32>(x_458.x, x_458.y, x_458.z) + vec3<f32>(0.0078125f, 0.0078125f, 0.0078125f));
    let x_463 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
    let x_466 : vec4<f32> = u_xlat6;
    let x_467 : vec3<f32> = vec3<f32>(x_466.x, x_466.y, x_466.z);
    let x_468 : f32 = u_xlat26;
    txVec0 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468);
    let x_481 : vec4<f32> = txVec0;
    let x_483 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_481.xyz, x_481.w);
    u_xlat6.x = x_483;
    let x_486 : vec4<f32> = u_xlat5;
    u_xlat7 = (vec3<f32>(x_486.x, x_486.y, x_486.z) + vec3<f32>(-0.0078125f, -0.0078125f, 0.0078125f));
    let x_492 : vec3<f32> = u_xlat7;
    let x_493 : f32 = u_xlat26;
    txVec1 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493);
    let x_501 : vec4<f32> = txVec1;
    let x_503 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_501.xyz, x_501.w);
    u_xlat6.y = x_503;
    let x_505 : vec4<f32> = u_xlat5;
    u_xlat7 = (vec3<f32>(x_505.x, x_505.y, x_505.z) + vec3<f32>(-0.0078125f, 0.0078125f, -0.0078125f));
    let x_510 : vec3<f32> = u_xlat7;
    let x_511 : f32 = u_xlat26;
    txVec2 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511);
    let x_519 : vec4<f32> = txVec2;
    let x_521 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_519.xyz, x_519.w);
    u_xlat6.z = x_521;
    let x_523 : vec4<f32> = u_xlat5;
    let x_526 : vec3<f32> = (vec3<f32>(x_523.x, x_523.y, x_523.z) + vec3<f32>(0.0078125f, -0.0078125f, -0.0078125f));
    let x_527 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
    let x_530 : vec4<f32> = u_xlat5;
    let x_531 : vec3<f32> = vec3<f32>(x_530.x, x_530.y, x_530.z);
    let x_532 : f32 = u_xlat26;
    txVec3 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532);
    let x_540 : vec4<f32> = txVec3;
    let x_542 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_540.xyz, x_540.w);
    u_xlat6.w = x_542;
    let x_544 : vec4<f32> = u_xlat6;
    u_xlat26 = dot(x_544, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    let x_549 : f32 = x_33.x_LightShadowData.x;
    u_xlat27 = (-(x_549) + 1.0f);
    let x_552 : f32 = u_xlat26;
    let x_553 : f32 = u_xlat27;
    let x_556 : f32 = x_33.x_LightShadowData.x;
    u_xlat26 = ((x_552 * x_553) + x_556);
  } else {
    u_xlat26 = 1.0f;
  }
  let x_559 : f32 = u_xlat25;
  let x_560 : f32 = u_xlat26;
  u_xlat25 = (x_559 + -(x_560));
  let x_563 : f32 = u_xlat24;
  let x_564 : f32 = u_xlat25;
  let x_566 : f32 = u_xlat26;
  u_xlat24 = ((x_563 * x_564) + x_566);
  let x_568 : vec3<f32> = u_xlat4;
  let x_569 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_568, x_569);
  let x_576 : f32 = u_xlat25;
  let x_578 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_576, x_576));
  u_xlat25 = x_578.x;
  let x_580 : f32 = u_xlat24;
  let x_581 : f32 = u_xlat25;
  u_xlat24 = (x_580 * x_581);
  let x_585 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_585;
  let x_588 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_588;
  let x_591 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_591;
  let x_593 : vec3<f32> = u_xlat4;
  let x_594 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_593, x_594);
  let x_596 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_596);
  let x_598 : f32 = u_xlat25;
  let x_600 : vec3<f32> = u_xlat4;
  let x_601 : vec3<f32> = (vec3<f32>(x_598, x_598, x_598) * x_600);
  let x_602 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
  let x_604 : f32 = u_xlat24;
  let x_608 : vec4<f32> = x_33.x_LightColor0;
  let x_610 : vec3<f32> = (vec3<f32>(x_604, x_604, x_604) * vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_611 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_615 : f32 = x_33.x_Glossiness;
  u_xlat24 = (-(x_615) + 1.0f);
  let x_618 : vec3<f32> = u_xlat4;
  let x_619 : f32 = u_xlat25;
  let x_622 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_618 * vec3<f32>(x_619, x_619, x_619)) + -(x_622));
  let x_625 : vec3<f32> = u_xlat4;
  let x_626 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_625, x_626);
  let x_628 : f32 = u_xlat25;
  u_xlat25 = max(x_628, 0.001f);
  let x_631 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_631);
  let x_633 : f32 = u_xlat25;
  let x_635 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_633, x_633, x_633) * x_635);
  let x_637 : vec4<f32> = u_xlat2;
  let x_639 : vec3<f32> = u_xlat3;
  u_xlat25 = dot(vec3<f32>(x_637.x, x_637.y, x_637.z), -(x_639));
  let x_642 : vec4<f32> = u_xlat2;
  let x_644 : vec4<f32> = u_xlat5;
  u_xlat26 = dot(vec3<f32>(x_642.x, x_642.y, x_642.z), vec3<f32>(x_644.x, x_644.y, x_644.z));
  let x_647 : f32 = u_xlat26;
  u_xlat26 = clamp(x_647, 0.0f, 1.0f);
  let x_649 : vec4<f32> = u_xlat2;
  let x_651 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_649.x, x_649.y, x_649.z), x_651);
  let x_655 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_655, 0.0f, 1.0f);
  let x_658 : vec4<f32> = u_xlat5;
  let x_660 : vec3<f32> = u_xlat4;
  u_xlat10.x = dot(vec3<f32>(x_658.x, x_658.y, x_658.z), x_660);
  let x_664 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_664, 0.0f, 1.0f);
  let x_669 : f32 = u_xlat10.x;
  let x_671 : f32 = u_xlat10.x;
  u_xlat18 = (x_669 * x_671);
  let x_673 : f32 = u_xlat18;
  let x_675 : f32 = u_xlat24;
  u_xlat18 = dot(vec2<f32>(x_673, x_673), vec2<f32>(x_675, x_675));
  let x_678 : f32 = u_xlat18;
  u_xlat18 = (x_678 + -0.5f);
  let x_681 : f32 = u_xlat26;
  u_xlat3.x = (-(x_681) + 1.0f);
  let x_687 : f32 = u_xlat3.x;
  let x_689 : f32 = u_xlat3.x;
  u_xlat11 = (x_687 * x_689);
  let x_691 : f32 = u_xlat11;
  let x_692 : f32 = u_xlat11;
  u_xlat11 = (x_691 * x_692);
  let x_695 : f32 = u_xlat3.x;
  let x_696 : f32 = u_xlat11;
  u_xlat3.x = (x_695 * x_696);
  let x_699 : f32 = u_xlat18;
  let x_701 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_699 * x_701) + 1.0f);
  let x_705 : f32 = u_xlat25;
  u_xlat11 = (-(abs(x_705)) + 1.0f);
  let x_710 : f32 = u_xlat11;
  let x_711 : f32 = u_xlat11;
  u_xlat19 = (x_710 * x_711);
  let x_713 : f32 = u_xlat19;
  let x_714 : f32 = u_xlat19;
  u_xlat19 = (x_713 * x_714);
  let x_716 : f32 = u_xlat11;
  let x_717 : f32 = u_xlat19;
  u_xlat11 = (x_716 * x_717);
  let x_719 : f32 = u_xlat18;
  let x_720 : f32 = u_xlat11;
  u_xlat18 = ((x_719 * x_720) + 1.0f);
  let x_723 : f32 = u_xlat18;
  let x_725 : f32 = u_xlat3.x;
  u_xlat18 = (x_723 * x_725);
  let x_727 : f32 = u_xlat26;
  let x_728 : f32 = u_xlat18;
  u_xlat18 = (x_727 * x_728);
  let x_730 : f32 = u_xlat24;
  let x_731 : f32 = u_xlat24;
  u_xlat24 = (x_730 * x_731);
  let x_733 : f32 = u_xlat24;
  u_xlat24 = max(x_733, 0.002f);
  let x_736 : f32 = u_xlat24;
  u_xlat3.x = (-(x_736) + 1.0f);
  let x_740 : f32 = u_xlat25;
  let x_743 : f32 = u_xlat3.x;
  let x_745 : f32 = u_xlat24;
  u_xlat11 = ((abs(x_740) * x_743) + x_745);
  let x_747 : f32 = u_xlat26;
  let x_749 : f32 = u_xlat3.x;
  let x_751 : f32 = u_xlat24;
  u_xlat3.x = ((x_747 * x_749) + x_751);
  let x_754 : f32 = u_xlat25;
  let x_757 : f32 = u_xlat3.x;
  u_xlat25 = (abs(x_754) * x_757);
  let x_759 : f32 = u_xlat26;
  let x_760 : f32 = u_xlat11;
  let x_762 : f32 = u_xlat25;
  u_xlat25 = ((x_759 * x_760) + x_762);
  let x_764 : f32 = u_xlat25;
  u_xlat25 = (x_764 + 0.00001f);
  let x_766 : f32 = u_xlat25;
  u_xlat25 = (0.5f / x_766);
  let x_768 : f32 = u_xlat24;
  let x_769 : f32 = u_xlat24;
  u_xlat24 = (x_768 * x_769);
  let x_772 : f32 = u_xlat2.x;
  let x_773 : f32 = u_xlat24;
  let x_776 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_772 * x_773) + -(x_776));
  let x_781 : f32 = u_xlat3.x;
  let x_783 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_781 * x_783) + 1.0f);
  let x_787 : f32 = u_xlat24;
  u_xlat24 = (x_787 * 0.318309873f);
  let x_791 : f32 = u_xlat2.x;
  let x_793 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_791 * x_793) + 0.0000001f);
  let x_798 : f32 = u_xlat24;
  let x_800 : f32 = u_xlat2.x;
  u_xlat24 = (x_798 / x_800);
  let x_802 : f32 = u_xlat24;
  let x_803 : f32 = u_xlat25;
  u_xlat24 = (x_802 * x_803);
  let x_805 : f32 = u_xlat26;
  let x_806 : f32 = u_xlat24;
  u_xlat24 = (x_805 * x_806);
  let x_808 : f32 = u_xlat24;
  u_xlat24 = (x_808 * 3.141592741f);
  let x_811 : f32 = u_xlat24;
  u_xlat24 = max(x_811, 0.0f);
  let x_813 : vec3<f32> = u_xlat0;
  let x_814 : vec3<f32> = u_xlat0;
  u_xlat25 = dot(x_813, x_814);
  let x_816 : f32 = u_xlat25;
  u_xlatb25 = !((x_816 == 0.0f));
  let x_818 : bool = u_xlatb25;
  u_xlat25 = select(0.0f, 1.0f, x_818);
  let x_820 : f32 = u_xlat24;
  let x_821 : f32 = u_xlat25;
  u_xlat24 = (x_820 * x_821);
  let x_823 : f32 = u_xlat18;
  let x_825 : vec4<f32> = u_xlat6;
  let x_827 : vec3<f32> = (vec3<f32>(x_823, x_823, x_823) * vec3<f32>(x_825.x, x_825.y, x_825.z));
  let x_828 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_827.x, x_828.y, x_827.y, x_827.z);
  let x_830 : vec4<f32> = u_xlat6;
  let x_832 : f32 = u_xlat24;
  u_xlat3 = (vec3<f32>(x_830.x, x_830.y, x_830.z) * vec3<f32>(x_832, x_832, x_832));
  let x_836 : f32 = u_xlat10.x;
  u_xlat24 = (-(x_836) + 1.0f);
  let x_839 : f32 = u_xlat24;
  let x_840 : f32 = u_xlat24;
  u_xlat25 = (x_839 * x_840);
  let x_842 : f32 = u_xlat25;
  let x_843 : f32 = u_xlat25;
  u_xlat25 = (x_842 * x_843);
  let x_845 : f32 = u_xlat24;
  let x_846 : f32 = u_xlat25;
  u_xlat24 = (x_845 * x_846);
  let x_848 : vec3<f32> = u_xlat0;
  u_xlat4 = (-(x_848) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_852 : vec3<f32> = u_xlat4;
  let x_853 : f32 = u_xlat24;
  let x_856 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_852 * vec3<f32>(x_853, x_853, x_853)) + x_856);
  let x_858 : vec3<f32> = u_xlat0;
  let x_859 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_858 * x_859);
  let x_863 : vec3<f32> = u_xlat1;
  let x_864 : vec4<f32> = u_xlat2;
  let x_867 : vec3<f32> = u_xlat0;
  let x_868 : vec3<f32> = ((x_863 * vec3<f32>(x_864.x, x_864.z, x_864.w)) + x_867);
  let x_869 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_868.x, x_868.y, x_868.z, x_869.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

