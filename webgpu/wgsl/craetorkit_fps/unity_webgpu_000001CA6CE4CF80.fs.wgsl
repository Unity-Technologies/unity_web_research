const    UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;
struct UnityDrawCallInfo {
  unity_BaseInstanceID : i32,
  unity_InstanceCount : i32,
}

struct PGlobals {
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
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

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_47 : PGlobals;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(2) var samplerunity_ProbeVolumeSH : sampler;

@group(1) @binding(2) var<uniform> x_181 : UnityInstancing_PerDraw2;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD4 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlati0 : i32;
  var u_xlat6 : vec3<f32>;
  var u_xlatb1 : bool;
  var u_xlatb7 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var x_123 : vec3<f32>;
  var u_xlat13 : f32;
  var x_249 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
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
  let x_54 : i32 = u_xlati0;
  u_xlati0 = (x_54 * 7i);
  let x_64 : f32 = x_47.unity_ProbeVolumeParams.x;
  u_xlatb1 = (x_64 == 1.0f);
  let x_67 : bool = u_xlatb1;
  if (x_67) {
    let x_73 : f32 = x_47.unity_ProbeVolumeParams.y;
    u_xlatb7 = (x_73 == 1.0f);
    let x_79 : vec3<f32> = vs_TEXCOORD2;
    let x_84 : vec4<f32> = x_47.unity_ProbeVolumeWorldToObject[1i];
    let x_86 : vec3<f32> = (vec3<f32>(x_79.y, x_79.y, x_79.y) * vec3<f32>(x_84.x, x_84.y, x_84.z));
    let x_87 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_86.x, x_86.y, x_86.z, x_87.w);
    let x_90 : vec4<f32> = x_47.unity_ProbeVolumeWorldToObject[0i];
    let x_92 : vec3<f32> = vs_TEXCOORD2;
    let x_95 : vec4<f32> = u_xlat2;
    let x_97 : vec3<f32> = ((vec3<f32>(x_90.x, x_90.y, x_90.z) * vec3<f32>(x_92.x, x_92.x, x_92.x)) + vec3<f32>(x_95.x, x_95.y, x_95.z));
    let x_98 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
    let x_102 : vec4<f32> = x_47.unity_ProbeVolumeWorldToObject[2i];
    let x_104 : vec3<f32> = vs_TEXCOORD2;
    let x_107 : vec4<f32> = u_xlat2;
    let x_109 : vec3<f32> = ((vec3<f32>(x_102.x, x_102.y, x_102.z) * vec3<f32>(x_104.z, x_104.z, x_104.z)) + vec3<f32>(x_107.x, x_107.y, x_107.z));
    let x_110 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_109.x, x_109.y, x_109.z, x_110.w);
    let x_112 : vec4<f32> = u_xlat2;
    let x_116 : vec4<f32> = x_47.unity_ProbeVolumeWorldToObject[3i];
    let x_118 : vec3<f32> = (vec3<f32>(x_112.x, x_112.y, x_112.z) + vec3<f32>(x_116.x, x_116.y, x_116.z));
    let x_119 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
    let x_122 : bool = u_xlatb7;
    if (x_122) {
      let x_126 : vec4<f32> = u_xlat2;
      x_123 = vec3<f32>(x_126.x, x_126.y, x_126.z);
    } else {
      let x_129 : vec3<f32> = vs_TEXCOORD2;
      x_123 = x_129;
    }
    let x_130 : vec3<f32> = x_123;
    u_xlat7 = x_130;
    let x_131 : vec3<f32> = u_xlat7;
    let x_135 : vec3<f32> = x_47.unity_ProbeVolumeMin;
    u_xlat7 = (x_131 + -(x_135));
    let x_138 : vec3<f32> = u_xlat7;
    let x_140 : vec3<f32> = x_47.unity_ProbeVolumeSizeInv;
    let x_141 : vec3<f32> = (x_138 * x_140);
    let x_142 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_142.x, x_141.x, x_141.y, x_141.z);
    let x_146 : f32 = u_xlat2.y;
    u_xlat7.x = ((x_146 * 0.25f) + 0.75f);
    let x_155 : f32 = x_47.unity_ProbeVolumeParams.z;
    u_xlat13 = ((x_155 * 0.5f) + 0.75f);
    let x_159 : f32 = u_xlat13;
    let x_161 : f32 = u_xlat7.x;
    u_xlat2.x = max(x_159, x_161);
    let x_172 : vec4<f32> = u_xlat2;
    let x_174 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_172.x, x_172.z, x_172.w));
    u_xlat2 = x_174;
  } else {
    let x_182 : i32 = u_xlati0;
    let x_185 : vec4<f32> = x_181.unity_Builtins2Array[(x_182 / 7i)].unity_SHCArray;
    u_xlat2 = vec4<f32>(x_185.w, x_185.w, x_185.w, x_185.w);
  }
  let x_187 : vec4<f32> = u_xlat2;
  let x_189 : vec4<f32> = x_47.unity_OcclusionMaskSelector;
  u_xlat7.x = dot(x_187, x_189);
  let x_193 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_193, 0.0f, 1.0f);
  let x_197 : vec3<f32> = u_xlat7;
  let x_201 : vec4<f32> = x_47.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_197.x, x_197.x, x_197.x) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : bool = u_xlatb1;
  if (x_204) {
    let x_208 : f32 = x_47.unity_ProbeVolumeParams.y;
    u_xlatb1 = (x_208 == 1.0f);
    let x_210 : vec3<f32> = vs_TEXCOORD2;
    let x_213 : vec4<f32> = x_47.unity_ProbeVolumeWorldToObject[1i];
    let x_215 : vec3<f32> = (vec3<f32>(x_210.y, x_210.y, x_210.y) * vec3<f32>(x_213.x, x_213.y, x_213.z));
    let x_216 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
    let x_219 : vec4<f32> = x_47.unity_ProbeVolumeWorldToObject[0i];
    let x_221 : vec3<f32> = vs_TEXCOORD2;
    let x_224 : vec4<f32> = u_xlat2;
    let x_226 : vec3<f32> = ((vec3<f32>(x_219.x, x_219.y, x_219.z) * vec3<f32>(x_221.x, x_221.x, x_221.x)) + vec3<f32>(x_224.x, x_224.y, x_224.z));
    let x_227 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
    let x_230 : vec4<f32> = x_47.unity_ProbeVolumeWorldToObject[2i];
    let x_232 : vec3<f32> = vs_TEXCOORD2;
    let x_235 : vec4<f32> = u_xlat2;
    let x_237 : vec3<f32> = ((vec3<f32>(x_230.x, x_230.y, x_230.z) * vec3<f32>(x_232.z, x_232.z, x_232.z)) + vec3<f32>(x_235.x, x_235.y, x_235.z));
    let x_238 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
    let x_240 : vec4<f32> = u_xlat2;
    let x_243 : vec4<f32> = x_47.unity_ProbeVolumeWorldToObject[3i];
    let x_245 : vec3<f32> = (vec3<f32>(x_240.x, x_240.y, x_240.z) + vec3<f32>(x_243.x, x_243.y, x_243.z));
    let x_246 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
    let x_248 : bool = u_xlatb1;
    if (x_248) {
      let x_252 : vec4<f32> = u_xlat2;
      x_249 = vec3<f32>(x_252.x, x_252.y, x_252.z);
    } else {
      let x_255 : vec3<f32> = vs_TEXCOORD2;
      x_249 = x_255;
    }
    let x_256 : vec3<f32> = x_249;
    let x_257 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
    let x_259 : vec4<f32> = u_xlat2;
    let x_262 : vec3<f32> = x_47.unity_ProbeVolumeMin;
    let x_264 : vec3<f32> = (vec3<f32>(x_259.x, x_259.y, x_259.z) + -(x_262));
    let x_265 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
    let x_267 : vec4<f32> = u_xlat2;
    let x_270 : vec3<f32> = x_47.unity_ProbeVolumeSizeInv;
    let x_271 : vec3<f32> = (vec3<f32>(x_267.x, x_267.y, x_267.z) * x_270);
    let x_272 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_272.x, x_271.x, x_271.y, x_271.z);
    let x_276 : f32 = u_xlat2.y;
    u_xlat1.x = (x_276 * 0.25f);
    let x_281 : f32 = x_47.unity_ProbeVolumeParams.z;
    u_xlat8 = (x_281 * 0.5f);
    let x_285 : f32 = x_47.unity_ProbeVolumeParams.z;
    u_xlat3.x = ((-(x_285) * 0.5f) + 0.25f);
    let x_291 : f32 = u_xlat1.x;
    let x_292 : f32 = u_xlat8;
    u_xlat1.x = max(x_291, x_292);
    let x_296 : f32 = u_xlat3.x;
    let x_298 : f32 = u_xlat1.x;
    u_xlat2.x = min(x_296, x_298);
    let x_304 : vec4<f32> = u_xlat2;
    let x_306 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_304.x, x_304.z, x_304.w));
    u_xlat3 = x_306;
    let x_308 : vec4<f32> = u_xlat2;
    let x_311 : vec3<f32> = (vec3<f32>(x_308.x, x_308.z, x_308.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_312 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
    let x_317 : vec4<f32> = u_xlat4;
    let x_319 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_317.x, x_317.y, x_317.z));
    u_xlat4 = x_319;
    let x_320 : vec4<f32> = u_xlat2;
    let x_323 : vec3<f32> = (vec3<f32>(x_320.x, x_320.z, x_320.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_324 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
    let x_329 : vec4<f32> = u_xlat2;
    let x_331 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_329.x, x_329.y, x_329.z));
    u_xlat2 = x_331;
    let x_334 : vec3<f32> = vs_TEXCOORD1;
    let x_335 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
    u_xlat5.w = 1.0f;
    let x_339 : vec4<f32> = u_xlat3;
    let x_340 : vec4<f32> = u_xlat5;
    u_xlat3.x = dot(x_339, x_340);
    let x_343 : vec4<f32> = u_xlat4;
    let x_344 : vec4<f32> = u_xlat5;
    u_xlat3.y = dot(x_343, x_344);
    let x_347 : vec4<f32> = u_xlat2;
    let x_348 : vec4<f32> = u_xlat5;
    u_xlat3.z = dot(x_347, x_348);
  } else {
    let x_352 : vec3<f32> = vs_TEXCOORD1;
    let x_353 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
    u_xlat2.w = 1.0f;
    let x_356 : i32 = u_xlati0;
    let x_359 : vec4<f32> = x_181.unity_Builtins2Array[(x_356 / 7i)].unity_SHArArray;
    let x_360 : vec4<f32> = u_xlat2;
    u_xlat3.x = dot(x_359, x_360);
    let x_363 : i32 = u_xlati0;
    let x_366 : vec4<f32> = x_181.unity_Builtins2Array[(x_363 / 7i)].unity_SHAgArray;
    let x_367 : vec4<f32> = u_xlat2;
    u_xlat3.y = dot(x_366, x_367);
    let x_370 : i32 = u_xlati0;
    let x_373 : vec4<f32> = x_181.unity_Builtins2Array[(x_370 / 7i)].unity_SHAbArray;
    let x_374 : vec4<f32> = u_xlat2;
    u_xlat3.z = dot(x_373, x_374);
  }
  let x_377 : vec4<f32> = u_xlat3;
  let x_380 : vec3<f32> = vs_TEXCOORD3;
  let x_381 : vec3<f32> = (vec3<f32>(x_377.x, x_377.y, x_377.z) + x_380);
  let x_382 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_384 : vec4<f32> = u_xlat2;
  let x_387 : vec3<f32> = max(vec3<f32>(x_384.x, x_384.y, x_384.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_388 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_391 : vec3<f32> = vs_TEXCOORD1;
  let x_393 : vec4<f32> = x_47.x_WorldSpaceLightPos0;
  u_xlat0.x = dot(x_391, vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_398 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_398, 0.0f);
  let x_401 : vec3<f32> = u_xlat6;
  let x_402 : vec3<f32> = u_xlat7;
  u_xlat1 = (x_401 * x_402);
  let x_404 : vec3<f32> = u_xlat6;
  let x_405 : vec4<f32> = u_xlat2;
  u_xlat6 = (x_404 * vec3<f32>(x_405.x, x_405.y, x_405.z));
  let x_408 : vec3<f32> = u_xlat1;
  let x_409 : vec3<f32> = u_xlat0;
  let x_412 : vec3<f32> = u_xlat6;
  u_xlat0 = ((x_408 * vec3<f32>(x_409.x, x_409.x, x_409.x)) + x_412);
  let x_417 : f32 = vs_TEXCOORD4;
  let x_419 : f32 = x_47.x_ProjectionParams.y;
  u_xlat18 = (x_417 / x_419);
  let x_421 : f32 = u_xlat18;
  u_xlat18 = (-(x_421) + 1.0f);
  let x_424 : f32 = u_xlat18;
  let x_426 : f32 = x_47.x_ProjectionParams.z;
  u_xlat18 = (x_424 * x_426);
  let x_428 : f32 = u_xlat18;
  u_xlat18 = max(x_428, 0.0f);
  let x_430 : f32 = u_xlat18;
  let x_433 : f32 = x_47.unity_FogParams.x;
  u_xlat18 = (x_430 * x_433);
  let x_435 : f32 = u_xlat18;
  let x_436 : f32 = u_xlat18;
  u_xlat18 = (x_435 * -(x_436));
  let x_439 : f32 = u_xlat18;
  u_xlat18 = exp2(x_439);
  let x_441 : vec3<f32> = u_xlat0;
  let x_443 : vec4<f32> = x_47.unity_FogColor;
  u_xlat0 = (x_441 + -(vec3<f32>(x_443.x, x_443.y, x_443.z)));
  let x_449 : f32 = u_xlat18;
  let x_451 : vec3<f32> = u_xlat0;
  let x_454 : vec4<f32> = x_47.unity_FogColor;
  let x_456 : vec3<f32> = ((vec3<f32>(x_449, x_449, x_449) * x_451) + vec3<f32>(x_454.x, x_454.y, x_454.z));
  let x_457 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) @interpolate(flat) vs_SV_InstanceID0_param : u32, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(2) vs_TEXCOORD1_param : vec3<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD4_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_SV_InstanceID0 = vs_SV_InstanceID0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

