struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_LightPositionRange : vec4<f32>,
  x_LightProjectionParams : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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
  let x_404 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat25 = dot(x_401, x_404);
  let x_406 : f32 = u_xlat25;
  u_xlat25 = clamp(x_406, 0.0f, 1.0f);
  let x_409 : f32 = u_xlat24;
  u_xlatb26 = (x_409 < 0.99000001f);
  let x_412 : bool = u_xlatb26;
  if (x_412) {
    let x_415 : vec3<f32> = vs_TEXCOORD5;
    let x_417 : vec4<f32> = x_33.x_LightPositionRange;
    let x_420 : vec3<f32> = (x_415 + -(vec3<f32>(x_417.x, x_417.y, x_417.z)));
    let x_421 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
    let x_424 : f32 = u_xlat5.y;
    let x_427 : f32 = u_xlat5.x;
    u_xlat26 = max(abs(x_424), abs(x_427));
    let x_431 : f32 = u_xlat5.z;
    let x_433 : f32 = u_xlat26;
    u_xlat26 = max(abs(x_431), x_433);
    let x_435 : f32 = u_xlat26;
    let x_437 : f32 = x_33.x_LightProjectionParams.z;
    u_xlat26 = (x_435 + -(x_437));
    let x_440 : f32 = u_xlat26;
    u_xlat26 = max(x_440, 0.00001f);
    let x_443 : f32 = u_xlat26;
    let x_445 : f32 = x_33.x_LightProjectionParams.w;
    u_xlat26 = (x_443 * x_445);
    let x_448 : f32 = x_33.x_LightProjectionParams.y;
    let x_449 : f32 = u_xlat26;
    u_xlat26 = (x_448 / x_449);
    let x_451 : f32 = u_xlat26;
    let x_453 : f32 = x_33.x_LightProjectionParams.x;
    u_xlat26 = (x_451 + -(x_453));
    let x_456 : f32 = u_xlat26;
    u_xlat26 = (-(x_456) + 1.0f);
    let x_459 : vec4<f32> = u_xlat5;
    let x_463 : vec3<f32> = (vec3<f32>(x_459.x, x_459.y, x_459.z) + vec3<f32>(0.0078125f, 0.0078125f, 0.0078125f));
    let x_464 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
    let x_467 : vec4<f32> = u_xlat6;
    let x_468 : vec3<f32> = vec3<f32>(x_467.x, x_467.y, x_467.z);
    let x_469 : f32 = u_xlat26;
    txVec0 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469);
    let x_482 : vec4<f32> = txVec0;
    let x_484 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_482.xyz, x_482.w);
    u_xlat6.x = x_484;
    let x_487 : vec4<f32> = u_xlat5;
    u_xlat7 = (vec3<f32>(x_487.x, x_487.y, x_487.z) + vec3<f32>(-0.0078125f, -0.0078125f, 0.0078125f));
    let x_493 : vec3<f32> = u_xlat7;
    let x_494 : f32 = u_xlat26;
    txVec1 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494);
    let x_502 : vec4<f32> = txVec1;
    let x_504 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_502.xyz, x_502.w);
    u_xlat6.y = x_504;
    let x_506 : vec4<f32> = u_xlat5;
    u_xlat7 = (vec3<f32>(x_506.x, x_506.y, x_506.z) + vec3<f32>(-0.0078125f, 0.0078125f, -0.0078125f));
    let x_511 : vec3<f32> = u_xlat7;
    let x_512 : f32 = u_xlat26;
    txVec2 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512);
    let x_520 : vec4<f32> = txVec2;
    let x_522 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_520.xyz, x_520.w);
    u_xlat6.z = x_522;
    let x_524 : vec4<f32> = u_xlat5;
    let x_527 : vec3<f32> = (vec3<f32>(x_524.x, x_524.y, x_524.z) + vec3<f32>(0.0078125f, -0.0078125f, -0.0078125f));
    let x_528 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
    let x_531 : vec4<f32> = u_xlat5;
    let x_532 : vec3<f32> = vec3<f32>(x_531.x, x_531.y, x_531.z);
    let x_533 : f32 = u_xlat26;
    txVec3 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533);
    let x_541 : vec4<f32> = txVec3;
    let x_543 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_541.xyz, x_541.w);
    u_xlat6.w = x_543;
    let x_545 : vec4<f32> = u_xlat6;
    u_xlat26 = dot(x_545, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    let x_550 : f32 = x_33.x_LightShadowData.x;
    u_xlat27 = (-(x_550) + 1.0f);
    let x_553 : f32 = u_xlat26;
    let x_554 : f32 = u_xlat27;
    let x_557 : f32 = x_33.x_LightShadowData.x;
    u_xlat26 = ((x_553 * x_554) + x_557);
  } else {
    u_xlat26 = 1.0f;
  }
  let x_560 : f32 = u_xlat25;
  let x_561 : f32 = u_xlat26;
  u_xlat25 = (x_560 + -(x_561));
  let x_564 : f32 = u_xlat24;
  let x_565 : f32 = u_xlat25;
  let x_567 : f32 = u_xlat26;
  u_xlat24 = ((x_564 * x_565) + x_567);
  let x_569 : vec3<f32> = u_xlat4;
  let x_570 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_569, x_570);
  let x_577 : f32 = u_xlat25;
  let x_579 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_577, x_577));
  u_xlat25 = x_579.x;
  let x_581 : f32 = u_xlat24;
  let x_582 : f32 = u_xlat25;
  u_xlat24 = (x_581 * x_582);
  let x_586 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_586;
  let x_589 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_589;
  let x_592 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_592;
  let x_594 : vec3<f32> = u_xlat4;
  let x_595 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_594, x_595);
  let x_597 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_597);
  let x_599 : f32 = u_xlat25;
  let x_601 : vec3<f32> = u_xlat4;
  let x_602 : vec3<f32> = (vec3<f32>(x_599, x_599, x_599) * x_601);
  let x_603 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
  let x_605 : f32 = u_xlat24;
  let x_609 : vec4<f32> = x_33.x_LightColor0;
  let x_611 : vec3<f32> = (vec3<f32>(x_605, x_605, x_605) * vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_612 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_616 : f32 = x_33.x_Glossiness;
  u_xlat24 = (-(x_616) + 1.0f);
  let x_619 : vec3<f32> = u_xlat4;
  let x_620 : f32 = u_xlat25;
  let x_623 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_619 * vec3<f32>(x_620, x_620, x_620)) + -(x_623));
  let x_626 : vec3<f32> = u_xlat4;
  let x_627 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_626, x_627);
  let x_629 : f32 = u_xlat25;
  u_xlat25 = max(x_629, 0.001f);
  let x_632 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_632);
  let x_634 : f32 = u_xlat25;
  let x_636 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_634, x_634, x_634) * x_636);
  let x_638 : vec4<f32> = u_xlat2;
  let x_640 : vec3<f32> = u_xlat3;
  u_xlat25 = dot(vec3<f32>(x_638.x, x_638.y, x_638.z), -(x_640));
  let x_643 : vec4<f32> = u_xlat2;
  let x_645 : vec4<f32> = u_xlat5;
  u_xlat26 = dot(vec3<f32>(x_643.x, x_643.y, x_643.z), vec3<f32>(x_645.x, x_645.y, x_645.z));
  let x_648 : f32 = u_xlat26;
  u_xlat26 = clamp(x_648, 0.0f, 1.0f);
  let x_650 : vec4<f32> = u_xlat2;
  let x_652 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_650.x, x_650.y, x_650.z), x_652);
  let x_656 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_656, 0.0f, 1.0f);
  let x_659 : vec4<f32> = u_xlat5;
  let x_661 : vec3<f32> = u_xlat4;
  u_xlat10.x = dot(vec3<f32>(x_659.x, x_659.y, x_659.z), x_661);
  let x_665 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_665, 0.0f, 1.0f);
  let x_670 : f32 = u_xlat10.x;
  let x_672 : f32 = u_xlat10.x;
  u_xlat18 = (x_670 * x_672);
  let x_674 : f32 = u_xlat18;
  let x_676 : f32 = u_xlat24;
  u_xlat18 = dot(vec2<f32>(x_674, x_674), vec2<f32>(x_676, x_676));
  let x_679 : f32 = u_xlat18;
  u_xlat18 = (x_679 + -0.5f);
  let x_682 : f32 = u_xlat26;
  u_xlat3.x = (-(x_682) + 1.0f);
  let x_688 : f32 = u_xlat3.x;
  let x_690 : f32 = u_xlat3.x;
  u_xlat11 = (x_688 * x_690);
  let x_692 : f32 = u_xlat11;
  let x_693 : f32 = u_xlat11;
  u_xlat11 = (x_692 * x_693);
  let x_696 : f32 = u_xlat3.x;
  let x_697 : f32 = u_xlat11;
  u_xlat3.x = (x_696 * x_697);
  let x_700 : f32 = u_xlat18;
  let x_702 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_700 * x_702) + 1.0f);
  let x_706 : f32 = u_xlat25;
  u_xlat11 = (-(abs(x_706)) + 1.0f);
  let x_711 : f32 = u_xlat11;
  let x_712 : f32 = u_xlat11;
  u_xlat19 = (x_711 * x_712);
  let x_714 : f32 = u_xlat19;
  let x_715 : f32 = u_xlat19;
  u_xlat19 = (x_714 * x_715);
  let x_717 : f32 = u_xlat11;
  let x_718 : f32 = u_xlat19;
  u_xlat11 = (x_717 * x_718);
  let x_720 : f32 = u_xlat18;
  let x_721 : f32 = u_xlat11;
  u_xlat18 = ((x_720 * x_721) + 1.0f);
  let x_724 : f32 = u_xlat18;
  let x_726 : f32 = u_xlat3.x;
  u_xlat18 = (x_724 * x_726);
  let x_728 : f32 = u_xlat26;
  let x_729 : f32 = u_xlat18;
  u_xlat18 = (x_728 * x_729);
  let x_731 : f32 = u_xlat24;
  let x_732 : f32 = u_xlat24;
  u_xlat24 = (x_731 * x_732);
  let x_734 : f32 = u_xlat24;
  u_xlat24 = max(x_734, 0.002f);
  let x_737 : f32 = u_xlat24;
  u_xlat3.x = (-(x_737) + 1.0f);
  let x_741 : f32 = u_xlat25;
  let x_744 : f32 = u_xlat3.x;
  let x_746 : f32 = u_xlat24;
  u_xlat11 = ((abs(x_741) * x_744) + x_746);
  let x_748 : f32 = u_xlat26;
  let x_750 : f32 = u_xlat3.x;
  let x_752 : f32 = u_xlat24;
  u_xlat3.x = ((x_748 * x_750) + x_752);
  let x_755 : f32 = u_xlat25;
  let x_758 : f32 = u_xlat3.x;
  u_xlat25 = (abs(x_755) * x_758);
  let x_760 : f32 = u_xlat26;
  let x_761 : f32 = u_xlat11;
  let x_763 : f32 = u_xlat25;
  u_xlat25 = ((x_760 * x_761) + x_763);
  let x_765 : f32 = u_xlat25;
  u_xlat25 = (x_765 + 0.00001f);
  let x_767 : f32 = u_xlat25;
  u_xlat25 = (0.5f / x_767);
  let x_769 : f32 = u_xlat24;
  let x_770 : f32 = u_xlat24;
  u_xlat24 = (x_769 * x_770);
  let x_773 : f32 = u_xlat2.x;
  let x_774 : f32 = u_xlat24;
  let x_777 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_773 * x_774) + -(x_777));
  let x_782 : f32 = u_xlat3.x;
  let x_784 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_782 * x_784) + 1.0f);
  let x_788 : f32 = u_xlat24;
  u_xlat24 = (x_788 * 0.318309873f);
  let x_792 : f32 = u_xlat2.x;
  let x_794 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_792 * x_794) + 0.0000001f);
  let x_799 : f32 = u_xlat24;
  let x_801 : f32 = u_xlat2.x;
  u_xlat24 = (x_799 / x_801);
  let x_803 : f32 = u_xlat24;
  let x_804 : f32 = u_xlat25;
  u_xlat24 = (x_803 * x_804);
  let x_806 : f32 = u_xlat26;
  let x_807 : f32 = u_xlat24;
  u_xlat24 = (x_806 * x_807);
  let x_809 : f32 = u_xlat24;
  u_xlat24 = (x_809 * 3.141592741f);
  let x_812 : f32 = u_xlat24;
  u_xlat24 = max(x_812, 0.0f);
  let x_814 : vec3<f32> = u_xlat0;
  let x_815 : vec3<f32> = u_xlat0;
  u_xlat25 = dot(x_814, x_815);
  let x_817 : f32 = u_xlat25;
  u_xlatb25 = !((x_817 == 0.0f));
  let x_819 : bool = u_xlatb25;
  u_xlat25 = select(0.0f, 1.0f, x_819);
  let x_821 : f32 = u_xlat24;
  let x_822 : f32 = u_xlat25;
  u_xlat24 = (x_821 * x_822);
  let x_824 : f32 = u_xlat18;
  let x_826 : vec4<f32> = u_xlat6;
  let x_828 : vec3<f32> = (vec3<f32>(x_824, x_824, x_824) * vec3<f32>(x_826.x, x_826.y, x_826.z));
  let x_829 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_828.x, x_829.y, x_828.y, x_828.z);
  let x_831 : vec4<f32> = u_xlat6;
  let x_833 : f32 = u_xlat24;
  u_xlat3 = (vec3<f32>(x_831.x, x_831.y, x_831.z) * vec3<f32>(x_833, x_833, x_833));
  let x_837 : f32 = u_xlat10.x;
  u_xlat24 = (-(x_837) + 1.0f);
  let x_840 : f32 = u_xlat24;
  let x_841 : f32 = u_xlat24;
  u_xlat25 = (x_840 * x_841);
  let x_843 : f32 = u_xlat25;
  let x_844 : f32 = u_xlat25;
  u_xlat25 = (x_843 * x_844);
  let x_846 : f32 = u_xlat24;
  let x_847 : f32 = u_xlat25;
  u_xlat24 = (x_846 * x_847);
  let x_849 : vec3<f32> = u_xlat0;
  u_xlat4 = (-(x_849) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_853 : vec3<f32> = u_xlat4;
  let x_854 : f32 = u_xlat24;
  let x_857 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_853 * vec3<f32>(x_854, x_854, x_854)) + x_857);
  let x_859 : vec3<f32> = u_xlat0;
  let x_860 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_859 * x_860);
  let x_862 : vec3<f32> = u_xlat1;
  let x_863 : vec4<f32> = u_xlat2;
  let x_866 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_862 * vec3<f32>(x_863.x, x_863.z, x_863.w)) + x_866);
  let x_869 : f32 = vs_TEXCOORD1.w;
  let x_871 : f32 = x_33.x_ProjectionParams.y;
  u_xlat24 = (x_869 / x_871);
  let x_873 : f32 = u_xlat24;
  u_xlat24 = (-(x_873) + 1.0f);
  let x_876 : f32 = u_xlat24;
  let x_878 : f32 = x_33.x_ProjectionParams.z;
  u_xlat24 = (x_876 * x_878);
  let x_880 : f32 = u_xlat24;
  u_xlat24 = max(x_880, 0.0f);
  let x_882 : f32 = u_xlat24;
  let x_885 : f32 = x_33.unity_FogParams.x;
  u_xlat24 = (x_882 * x_885);
  let x_887 : f32 = u_xlat24;
  let x_888 : f32 = u_xlat24;
  u_xlat24 = (x_887 * -(x_888));
  let x_891 : f32 = u_xlat24;
  u_xlat24 = exp2(x_891);
  let x_895 : vec3<f32> = u_xlat0;
  let x_896 : f32 = u_xlat24;
  let x_898 : vec3<f32> = (x_895 * vec3<f32>(x_896, x_896, x_896));
  let x_899 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_898.x, x_898.y, x_898.z, x_899.w);
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

