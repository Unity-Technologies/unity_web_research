const    UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;
struct UnityDrawCallInfo {
  unity_BaseInstanceID : i32,
  unity_InstanceCount : i32,
}

struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_FogColor : vec4<f32>,
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
}

struct unity_Builtins2Array_Type {
  unity_SHArArray : vec4<f32>,
  unity_SHAgArray : vec4<f32>,
  unity_SHAbArray : vec4<f32>,
  unity_SHBrArray : vec4<f32>,
  unity_SHBgArray : vec4<f32>,
  unity_SHBbArray : vec4<f32>,
  unity_SHCArray : vec4<f32>,
}

type Arr = array<unity_Builtins2Array_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_PerDraw2 {
  unity_Builtins2Array : Arr,
}

var<private> vs_SV_InstanceID0 : u32;

@group(1) @binding(1) var<uniform> x_16 : UnityDrawCallInfo;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_47 : PGlobals;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(3) var samplerunity_ProbeVolumeSH : sampler;

@group(1) @binding(2) var<uniform> x_258 : UnityInstancing_PerDraw2;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(1) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_ShadowMapTexture : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD4 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlati0 : i32;
  var u_xlat6 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb7 : bool;
  var u_xlatb13 : bool;
  var x_197 : vec3<f32>;
  var u_xlat13 : f32;
  var u_xlat19 : f32;
  var x_353 : vec3<f32>;
  var u_xlat8 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : u32 = vs_SV_InstanceID0;
  let x_20 : i32 = x_16.unity_BaseInstanceID;
  u_xlati0 = (bitcast<i32>(x_12) + x_20);
  let x_39 : vec2<f32> = vs_TEXCOORD0;
  let x_41 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_39);
  u_xlat6 = vec3<f32>(x_41.x, x_41.y, x_41.z);
  let x_43 : vec3<f32> = u_xlat6;
  let x_51 : vec4<f32> = x_47.x_Color;
  u_xlat6 = (x_43 * vec3<f32>(x_51.x, x_51.y, x_51.z));
  let x_58 : vec3<f32> = vs_TEXCOORD2;
  let x_62 : vec3<f32> = x_47.x_WorldSpaceCameraPos;
  let x_63 : vec3<f32> = (-(x_58) + x_62);
  let x_64 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_63.x, x_63.y, x_63.z, x_64.w);
  let x_71 : f32 = x_47.unity_MatrixV[0i].z;
  u_xlat2.x = x_71;
  let x_77 : f32 = x_47.unity_MatrixV[1i].z;
  u_xlat2.y = x_77;
  let x_82 : f32 = x_47.unity_MatrixV[2i].z;
  u_xlat2.z = x_82;
  let x_84 : vec4<f32> = u_xlat1;
  let x_86 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(vec3<f32>(x_84.x, x_84.y, x_84.z), vec3<f32>(x_86.x, x_86.y, x_86.z));
  let x_91 : vec3<f32> = vs_TEXCOORD2;
  let x_94 : vec4<f32> = x_47.unity_ShadowFadeCenterAndType;
  u_xlat7 = (x_91 + -(vec3<f32>(x_94.x, x_94.y, x_94.z)));
  let x_98 : vec3<f32> = u_xlat7;
  let x_99 : vec3<f32> = u_xlat7;
  u_xlat7.x = dot(x_98, x_99);
  let x_103 : f32 = u_xlat7.x;
  u_xlat7.x = sqrt(x_103);
  let x_107 : f32 = u_xlat1.x;
  let x_110 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_107) + x_110);
  let x_115 : f32 = x_47.unity_ShadowFadeCenterAndType.w;
  let x_117 : f32 = u_xlat7.x;
  let x_120 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_115 * x_117) + x_120);
  let x_124 : f32 = u_xlat1.x;
  let x_127 : f32 = x_47.x_LightShadowData.z;
  let x_130 : f32 = x_47.x_LightShadowData.w;
  u_xlat1.x = ((x_124 * x_127) + x_130);
  let x_134 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_134, 0.0f, 1.0f);
  let x_139 : i32 = u_xlati0;
  u_xlati0 = (x_139 * 7i);
  let x_147 : f32 = x_47.unity_ProbeVolumeParams.x;
  u_xlatb7 = (x_147 == 1.0f);
  let x_149 : bool = u_xlatb7;
  if (x_149) {
    let x_154 : f32 = x_47.unity_ProbeVolumeParams.y;
    u_xlatb13 = (x_154 == 1.0f);
    let x_156 : vec3<f32> = vs_TEXCOORD2;
    let x_160 : vec4<f32> = x_47.unity_ProbeVolumeWorldToObject[1i];
    let x_162 : vec3<f32> = (vec3<f32>(x_156.y, x_156.y, x_156.y) * vec3<f32>(x_160.x, x_160.y, x_160.z));
    let x_163 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
    let x_166 : vec4<f32> = x_47.unity_ProbeVolumeWorldToObject[0i];
    let x_168 : vec3<f32> = vs_TEXCOORD2;
    let x_171 : vec4<f32> = u_xlat2;
    let x_173 : vec3<f32> = ((vec3<f32>(x_166.x, x_166.y, x_166.z) * vec3<f32>(x_168.x, x_168.x, x_168.x)) + vec3<f32>(x_171.x, x_171.y, x_171.z));
    let x_174 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
    let x_177 : vec4<f32> = x_47.unity_ProbeVolumeWorldToObject[2i];
    let x_179 : vec3<f32> = vs_TEXCOORD2;
    let x_182 : vec4<f32> = u_xlat2;
    let x_184 : vec3<f32> = ((vec3<f32>(x_177.x, x_177.y, x_177.z) * vec3<f32>(x_179.z, x_179.z, x_179.z)) + vec3<f32>(x_182.x, x_182.y, x_182.z));
    let x_185 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
    let x_187 : vec4<f32> = u_xlat2;
    let x_191 : vec4<f32> = x_47.unity_ProbeVolumeWorldToObject[3i];
    let x_193 : vec3<f32> = (vec3<f32>(x_187.x, x_187.y, x_187.z) + vec3<f32>(x_191.x, x_191.y, x_191.z));
    let x_194 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
    let x_196 : bool = u_xlatb13;
    if (x_196) {
      let x_200 : vec4<f32> = u_xlat2;
      x_197 = vec3<f32>(x_200.x, x_200.y, x_200.z);
    } else {
      let x_203 : vec3<f32> = vs_TEXCOORD2;
      x_197 = x_203;
    }
    let x_204 : vec3<f32> = x_197;
    let x_205 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
    let x_207 : vec4<f32> = u_xlat2;
    let x_211 : vec3<f32> = x_47.unity_ProbeVolumeMin;
    let x_213 : vec3<f32> = (vec3<f32>(x_207.x, x_207.y, x_207.z) + -(x_211));
    let x_214 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
    let x_216 : vec4<f32> = u_xlat2;
    let x_220 : vec3<f32> = x_47.unity_ProbeVolumeSizeInv;
    let x_221 : vec3<f32> = (vec3<f32>(x_216.x, x_216.y, x_216.z) * x_220);
    let x_222 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_222.x, x_221.x, x_221.y, x_221.z);
    let x_226 : f32 = u_xlat2.y;
    u_xlat13 = ((x_226 * 0.25f) + 0.75f);
    let x_233 : f32 = x_47.unity_ProbeVolumeParams.z;
    u_xlat19 = ((x_233 * 0.5f) + 0.75f);
    let x_237 : f32 = u_xlat19;
    let x_238 : f32 = u_xlat13;
    u_xlat2.x = max(x_237, x_238);
    let x_249 : vec4<f32> = u_xlat2;
    let x_251 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_249.x, x_249.z, x_249.w));
    u_xlat2 = x_251;
  } else {
    let x_259 : i32 = u_xlati0;
    let x_262 : vec4<f32> = x_258.unity_Builtins2Array[(x_259 / 7i)].unity_SHCArray;
    u_xlat2 = vec4<f32>(x_262.w, x_262.w, x_262.w, x_262.w);
  }
  let x_264 : vec4<f32> = u_xlat2;
  let x_266 : vec4<f32> = x_47.unity_OcclusionMaskSelector;
  u_xlat13 = dot(x_264, x_266);
  let x_268 : f32 = u_xlat13;
  u_xlat13 = clamp(x_268, 0.0f, 1.0f);
  let x_272 : vec4<f32> = vs_TEXCOORD5;
  let x_274 : vec4<f32> = vs_TEXCOORD5;
  let x_276 : vec2<f32> = (vec2<f32>(x_272.x, x_272.y) / vec2<f32>(x_274.w, x_274.w));
  let x_277 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_276.x, x_276.y, x_277.z, x_277.w);
  let x_284 : vec4<f32> = u_xlat2;
  let x_286 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_284.x, x_284.y));
  u_xlat19 = x_286.x;
  let x_288 : f32 = u_xlat19;
  let x_290 : f32 = u_xlat13;
  u_xlat13 = (-(x_288) + x_290);
  let x_293 : f32 = u_xlat1.x;
  let x_294 : f32 = u_xlat13;
  let x_296 : f32 = u_xlat19;
  u_xlat1.x = ((x_293 * x_294) + x_296);
  let x_299 : vec4<f32> = u_xlat1;
  let x_303 : vec4<f32> = x_47.x_LightColor0;
  let x_305 : vec3<f32> = (vec3<f32>(x_299.x, x_299.x, x_299.x) * vec3<f32>(x_303.x, x_303.y, x_303.z));
  let x_306 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_305.x, x_306.y, x_305.y, x_305.z);
  let x_308 : bool = u_xlatb7;
  if (x_308) {
    let x_312 : f32 = x_47.unity_ProbeVolumeParams.y;
    u_xlatb7 = (x_312 == 1.0f);
    let x_314 : vec3<f32> = vs_TEXCOORD2;
    let x_317 : vec4<f32> = x_47.unity_ProbeVolumeWorldToObject[1i];
    let x_319 : vec3<f32> = (vec3<f32>(x_314.y, x_314.y, x_314.y) * vec3<f32>(x_317.x, x_317.y, x_317.z));
    let x_320 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
    let x_323 : vec4<f32> = x_47.unity_ProbeVolumeWorldToObject[0i];
    let x_325 : vec3<f32> = vs_TEXCOORD2;
    let x_328 : vec4<f32> = u_xlat2;
    let x_330 : vec3<f32> = ((vec3<f32>(x_323.x, x_323.y, x_323.z) * vec3<f32>(x_325.x, x_325.x, x_325.x)) + vec3<f32>(x_328.x, x_328.y, x_328.z));
    let x_331 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
    let x_334 : vec4<f32> = x_47.unity_ProbeVolumeWorldToObject[2i];
    let x_336 : vec3<f32> = vs_TEXCOORD2;
    let x_339 : vec4<f32> = u_xlat2;
    let x_341 : vec3<f32> = ((vec3<f32>(x_334.x, x_334.y, x_334.z) * vec3<f32>(x_336.z, x_336.z, x_336.z)) + vec3<f32>(x_339.x, x_339.y, x_339.z));
    let x_342 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
    let x_344 : vec4<f32> = u_xlat2;
    let x_347 : vec4<f32> = x_47.unity_ProbeVolumeWorldToObject[3i];
    let x_349 : vec3<f32> = (vec3<f32>(x_344.x, x_344.y, x_344.z) + vec3<f32>(x_347.x, x_347.y, x_347.z));
    let x_350 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
    let x_352 : bool = u_xlatb7;
    if (x_352) {
      let x_356 : vec4<f32> = u_xlat2;
      x_353 = vec3<f32>(x_356.x, x_356.y, x_356.z);
    } else {
      let x_359 : vec3<f32> = vs_TEXCOORD2;
      x_353 = x_359;
    }
    let x_360 : vec3<f32> = x_353;
    let x_361 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
    let x_363 : vec4<f32> = u_xlat2;
    let x_366 : vec3<f32> = x_47.unity_ProbeVolumeMin;
    let x_368 : vec3<f32> = (vec3<f32>(x_363.x, x_363.y, x_363.z) + -(x_366));
    let x_369 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
    let x_371 : vec4<f32> = u_xlat2;
    let x_374 : vec3<f32> = x_47.unity_ProbeVolumeSizeInv;
    let x_375 : vec3<f32> = (vec3<f32>(x_371.x, x_371.y, x_371.z) * x_374);
    let x_376 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_376.x, x_375.x, x_375.y, x_375.z);
    let x_379 : f32 = u_xlat2.y;
    u_xlat7.x = (x_379 * 0.25f);
    let x_384 : f32 = x_47.unity_ProbeVolumeParams.z;
    u_xlat8 = (x_384 * 0.5f);
    let x_388 : f32 = x_47.unity_ProbeVolumeParams.z;
    u_xlat3.x = ((-(x_388) * 0.5f) + 0.25f);
    let x_394 : f32 = u_xlat7.x;
    let x_395 : f32 = u_xlat8;
    u_xlat7.x = max(x_394, x_395);
    let x_399 : f32 = u_xlat3.x;
    let x_401 : f32 = u_xlat7.x;
    u_xlat2.x = min(x_399, x_401);
    let x_407 : vec4<f32> = u_xlat2;
    let x_409 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_407.x, x_407.z, x_407.w));
    u_xlat3 = x_409;
    let x_411 : vec4<f32> = u_xlat2;
    let x_414 : vec3<f32> = (vec3<f32>(x_411.x, x_411.z, x_411.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_415 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
    let x_420 : vec4<f32> = u_xlat4;
    let x_422 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_420.x, x_420.y, x_420.z));
    u_xlat4 = x_422;
    let x_423 : vec4<f32> = u_xlat2;
    let x_426 : vec3<f32> = (vec3<f32>(x_423.x, x_423.z, x_423.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_427 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
    let x_432 : vec4<f32> = u_xlat2;
    let x_434 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_432.x, x_432.y, x_432.z));
    u_xlat2 = x_434;
    let x_437 : vec3<f32> = vs_TEXCOORD1;
    let x_438 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
    u_xlat5.w = 1.0f;
    let x_441 : vec4<f32> = u_xlat3;
    let x_442 : vec4<f32> = u_xlat5;
    u_xlat3.x = dot(x_441, x_442);
    let x_445 : vec4<f32> = u_xlat4;
    let x_446 : vec4<f32> = u_xlat5;
    u_xlat3.y = dot(x_445, x_446);
    let x_449 : vec4<f32> = u_xlat2;
    let x_450 : vec4<f32> = u_xlat5;
    u_xlat3.z = dot(x_449, x_450);
  } else {
    let x_454 : vec3<f32> = vs_TEXCOORD1;
    let x_455 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
    u_xlat2.w = 1.0f;
    let x_458 : i32 = u_xlati0;
    let x_461 : vec4<f32> = x_258.unity_Builtins2Array[(x_458 / 7i)].unity_SHArArray;
    let x_462 : vec4<f32> = u_xlat2;
    u_xlat3.x = dot(x_461, x_462);
    let x_465 : i32 = u_xlati0;
    let x_468 : vec4<f32> = x_258.unity_Builtins2Array[(x_465 / 7i)].unity_SHAgArray;
    let x_469 : vec4<f32> = u_xlat2;
    u_xlat3.y = dot(x_468, x_469);
    let x_472 : i32 = u_xlati0;
    let x_475 : vec4<f32> = x_258.unity_Builtins2Array[(x_472 / 7i)].unity_SHAbArray;
    let x_476 : vec4<f32> = u_xlat2;
    u_xlat3.z = dot(x_475, x_476);
  }
  let x_479 : vec4<f32> = u_xlat3;
  let x_482 : vec3<f32> = vs_TEXCOORD3;
  let x_483 : vec3<f32> = (vec3<f32>(x_479.x, x_479.y, x_479.z) + x_482);
  let x_484 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_486 : vec4<f32> = u_xlat2;
  let x_489 : vec3<f32> = max(vec3<f32>(x_486.x, x_486.y, x_486.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_490 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_489.x, x_489.y, x_489.z, x_490.w);
  let x_493 : vec3<f32> = vs_TEXCOORD1;
  let x_495 : vec4<f32> = x_47.x_WorldSpaceLightPos0;
  u_xlat0.x = dot(x_493, vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_500 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_500, 0.0f);
  let x_503 : vec3<f32> = u_xlat6;
  let x_504 : vec4<f32> = u_xlat1;
  let x_506 : vec3<f32> = (x_503 * vec3<f32>(x_504.x, x_504.z, x_504.w));
  let x_507 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  let x_509 : vec3<f32> = u_xlat6;
  let x_510 : vec4<f32> = u_xlat2;
  u_xlat6 = (x_509 * vec3<f32>(x_510.x, x_510.y, x_510.z));
  let x_513 : vec4<f32> = u_xlat1;
  let x_515 : vec3<f32> = u_xlat0;
  let x_518 : vec3<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_513.x, x_513.y, x_513.z) * vec3<f32>(x_515.x, x_515.x, x_515.x)) + x_518);
  let x_523 : f32 = vs_TEXCOORD4;
  let x_525 : f32 = x_47.x_ProjectionParams.y;
  u_xlat18 = (x_523 / x_525);
  let x_527 : f32 = u_xlat18;
  u_xlat18 = (-(x_527) + 1.0f);
  let x_530 : f32 = u_xlat18;
  let x_532 : f32 = x_47.x_ProjectionParams.z;
  u_xlat18 = (x_530 * x_532);
  let x_534 : f32 = u_xlat18;
  u_xlat18 = max(x_534, 0.0f);
  let x_536 : f32 = u_xlat18;
  let x_539 : f32 = x_47.unity_FogParams.x;
  u_xlat18 = (x_536 * x_539);
  let x_541 : f32 = u_xlat18;
  let x_542 : f32 = u_xlat18;
  u_xlat18 = (x_541 * -(x_542));
  let x_545 : f32 = u_xlat18;
  u_xlat18 = exp2(x_545);
  let x_547 : vec3<f32> = u_xlat0;
  let x_549 : vec4<f32> = x_47.unity_FogColor;
  u_xlat0 = (x_547 + -(vec3<f32>(x_549.x, x_549.y, x_549.z)));
  let x_555 : f32 = u_xlat18;
  let x_557 : vec3<f32> = u_xlat0;
  let x_560 : vec4<f32> = x_47.unity_FogColor;
  let x_562 : vec3<f32> = ((vec3<f32>(x_555, x_555, x_555) * x_557) + vec3<f32>(x_560.x, x_560.y, x_560.z));
  let x_563 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_562.x, x_562.y, x_562.z, x_563.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(6) @interpolate(flat) vs_SV_InstanceID0_param : u32, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(2) vs_TEXCOORD1_param : vec3<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD4_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_SV_InstanceID0 = vs_SV_InstanceID0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

