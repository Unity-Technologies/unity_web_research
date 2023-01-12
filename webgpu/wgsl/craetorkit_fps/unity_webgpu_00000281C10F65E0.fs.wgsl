const    UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;
struct UnityDrawCallInfo {
  unity_BaseInstanceID : i32,
  unity_InstanceCount : i32,
}

struct PGlobals {
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
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

@group(1) @binding(2) var<uniform> x_179 : UnityInstancing_PerDraw2;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlati0 : i32;
  var u_xlat6 : vec3<f32>;
  var u_xlatb1 : bool;
  var u_xlatb7 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var x_120 : vec3<f32>;
  var u_xlat13 : f32;
  var x_247 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat8 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat0 : f32;
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
  let x_63 : f32 = x_47.unity_ProbeVolumeParams.x;
  u_xlatb1 = (x_63 == 1.0f);
  let x_66 : bool = u_xlatb1;
  if (x_66) {
    let x_72 : f32 = x_47.unity_ProbeVolumeParams.y;
    u_xlatb7 = (x_72 == 1.0f);
    let x_78 : vec3<f32> = vs_TEXCOORD2;
    let x_83 : vec4<f32> = x_47.unity_ProbeVolumeWorldToObject[1i];
    let x_85 : vec3<f32> = (vec3<f32>(x_78.y, x_78.y, x_78.y) * vec3<f32>(x_83.x, x_83.y, x_83.z));
    let x_86 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_85.x, x_85.y, x_85.z, x_86.w);
    let x_89 : vec4<f32> = x_47.unity_ProbeVolumeWorldToObject[0i];
    let x_91 : vec3<f32> = vs_TEXCOORD2;
    let x_94 : vec4<f32> = u_xlat2;
    let x_96 : vec3<f32> = ((vec3<f32>(x_89.x, x_89.y, x_89.z) * vec3<f32>(x_91.x, x_91.x, x_91.x)) + vec3<f32>(x_94.x, x_94.y, x_94.z));
    let x_97 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
    let x_100 : vec4<f32> = x_47.unity_ProbeVolumeWorldToObject[2i];
    let x_102 : vec3<f32> = vs_TEXCOORD2;
    let x_105 : vec4<f32> = u_xlat2;
    let x_107 : vec3<f32> = ((vec3<f32>(x_100.x, x_100.y, x_100.z) * vec3<f32>(x_102.z, x_102.z, x_102.z)) + vec3<f32>(x_105.x, x_105.y, x_105.z));
    let x_108 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
    let x_110 : vec4<f32> = u_xlat2;
    let x_113 : vec4<f32> = x_47.unity_ProbeVolumeWorldToObject[3i];
    let x_115 : vec3<f32> = (vec3<f32>(x_110.x, x_110.y, x_110.z) + vec3<f32>(x_113.x, x_113.y, x_113.z));
    let x_116 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_115.x, x_115.y, x_115.z, x_116.w);
    let x_119 : bool = u_xlatb7;
    if (x_119) {
      let x_123 : vec4<f32> = u_xlat2;
      x_120 = vec3<f32>(x_123.x, x_123.y, x_123.z);
    } else {
      let x_126 : vec3<f32> = vs_TEXCOORD2;
      x_120 = x_126;
    }
    let x_127 : vec3<f32> = x_120;
    u_xlat7 = x_127;
    let x_128 : vec3<f32> = u_xlat7;
    let x_132 : vec3<f32> = x_47.unity_ProbeVolumeMin;
    u_xlat7 = (x_128 + -(x_132));
    let x_135 : vec3<f32> = u_xlat7;
    let x_138 : vec3<f32> = x_47.unity_ProbeVolumeSizeInv;
    let x_139 : vec3<f32> = (x_135 * x_138);
    let x_140 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_140.x, x_139.x, x_139.y, x_139.z);
    let x_144 : f32 = u_xlat2.y;
    u_xlat7.x = ((x_144 * 0.25f) + 0.75f);
    let x_153 : f32 = x_47.unity_ProbeVolumeParams.z;
    u_xlat13 = ((x_153 * 0.5f) + 0.75f);
    let x_157 : f32 = u_xlat13;
    let x_159 : f32 = u_xlat7.x;
    u_xlat2.x = max(x_157, x_159);
    let x_170 : vec4<f32> = u_xlat2;
    let x_172 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_170.x, x_170.z, x_170.w));
    u_xlat2 = x_172;
  } else {
    let x_180 : i32 = u_xlati0;
    let x_184 : vec4<f32> = x_179.unity_Builtins2Array[(x_180 / 7i)].unity_SHCArray;
    u_xlat2 = vec4<f32>(x_184.w, x_184.w, x_184.w, x_184.w);
  }
  let x_186 : vec4<f32> = u_xlat2;
  let x_188 : vec4<f32> = x_47.unity_OcclusionMaskSelector;
  u_xlat7.x = dot(x_186, x_188);
  let x_192 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_192, 0.0f, 1.0f);
  let x_196 : vec3<f32> = u_xlat7;
  let x_199 : vec4<f32> = x_47.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_196.x, x_196.x, x_196.x) * vec3<f32>(x_199.x, x_199.y, x_199.z));
  let x_202 : bool = u_xlatb1;
  if (x_202) {
    let x_206 : f32 = x_47.unity_ProbeVolumeParams.y;
    u_xlatb1 = (x_206 == 1.0f);
    let x_208 : vec3<f32> = vs_TEXCOORD2;
    let x_211 : vec4<f32> = x_47.unity_ProbeVolumeWorldToObject[1i];
    let x_213 : vec3<f32> = (vec3<f32>(x_208.y, x_208.y, x_208.y) * vec3<f32>(x_211.x, x_211.y, x_211.z));
    let x_214 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
    let x_217 : vec4<f32> = x_47.unity_ProbeVolumeWorldToObject[0i];
    let x_219 : vec3<f32> = vs_TEXCOORD2;
    let x_222 : vec4<f32> = u_xlat2;
    let x_224 : vec3<f32> = ((vec3<f32>(x_217.x, x_217.y, x_217.z) * vec3<f32>(x_219.x, x_219.x, x_219.x)) + vec3<f32>(x_222.x, x_222.y, x_222.z));
    let x_225 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
    let x_228 : vec4<f32> = x_47.unity_ProbeVolumeWorldToObject[2i];
    let x_230 : vec3<f32> = vs_TEXCOORD2;
    let x_233 : vec4<f32> = u_xlat2;
    let x_235 : vec3<f32> = ((vec3<f32>(x_228.x, x_228.y, x_228.z) * vec3<f32>(x_230.z, x_230.z, x_230.z)) + vec3<f32>(x_233.x, x_233.y, x_233.z));
    let x_236 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
    let x_238 : vec4<f32> = u_xlat2;
    let x_241 : vec4<f32> = x_47.unity_ProbeVolumeWorldToObject[3i];
    let x_243 : vec3<f32> = (vec3<f32>(x_238.x, x_238.y, x_238.z) + vec3<f32>(x_241.x, x_241.y, x_241.z));
    let x_244 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
    let x_246 : bool = u_xlatb1;
    if (x_246) {
      let x_250 : vec4<f32> = u_xlat2;
      x_247 = vec3<f32>(x_250.x, x_250.y, x_250.z);
    } else {
      let x_253 : vec3<f32> = vs_TEXCOORD2;
      x_247 = x_253;
    }
    let x_254 : vec3<f32> = x_247;
    let x_255 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
    let x_257 : vec4<f32> = u_xlat2;
    let x_260 : vec3<f32> = x_47.unity_ProbeVolumeMin;
    let x_262 : vec3<f32> = (vec3<f32>(x_257.x, x_257.y, x_257.z) + -(x_260));
    let x_263 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
    let x_265 : vec4<f32> = u_xlat2;
    let x_268 : vec3<f32> = x_47.unity_ProbeVolumeSizeInv;
    let x_269 : vec3<f32> = (vec3<f32>(x_265.x, x_265.y, x_265.z) * x_268);
    let x_270 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_270.x, x_269.x, x_269.y, x_269.z);
    let x_274 : f32 = u_xlat2.y;
    u_xlat1.x = (x_274 * 0.25f);
    let x_279 : f32 = x_47.unity_ProbeVolumeParams.z;
    u_xlat8 = (x_279 * 0.5f);
    let x_283 : f32 = x_47.unity_ProbeVolumeParams.z;
    u_xlat3.x = ((-(x_283) * 0.5f) + 0.25f);
    let x_289 : f32 = u_xlat1.x;
    let x_290 : f32 = u_xlat8;
    u_xlat1.x = max(x_289, x_290);
    let x_294 : f32 = u_xlat3.x;
    let x_296 : f32 = u_xlat1.x;
    u_xlat2.x = min(x_294, x_296);
    let x_302 : vec4<f32> = u_xlat2;
    let x_304 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_302.x, x_302.z, x_302.w));
    u_xlat3 = x_304;
    let x_306 : vec4<f32> = u_xlat2;
    let x_309 : vec3<f32> = (vec3<f32>(x_306.x, x_306.z, x_306.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_310 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
    let x_315 : vec4<f32> = u_xlat4;
    let x_317 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_315.x, x_315.y, x_315.z));
    u_xlat4 = x_317;
    let x_318 : vec4<f32> = u_xlat2;
    let x_321 : vec3<f32> = (vec3<f32>(x_318.x, x_318.z, x_318.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_322 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
    let x_327 : vec4<f32> = u_xlat2;
    let x_329 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_327.x, x_327.y, x_327.z));
    u_xlat2 = x_329;
    let x_332 : vec3<f32> = vs_TEXCOORD1;
    let x_333 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
    u_xlat5.w = 1.0f;
    let x_337 : vec4<f32> = u_xlat3;
    let x_338 : vec4<f32> = u_xlat5;
    u_xlat3.x = dot(x_337, x_338);
    let x_341 : vec4<f32> = u_xlat4;
    let x_342 : vec4<f32> = u_xlat5;
    u_xlat3.y = dot(x_341, x_342);
    let x_345 : vec4<f32> = u_xlat2;
    let x_346 : vec4<f32> = u_xlat5;
    u_xlat3.z = dot(x_345, x_346);
  } else {
    let x_350 : vec3<f32> = vs_TEXCOORD1;
    let x_351 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
    u_xlat2.w = 1.0f;
    let x_354 : i32 = u_xlati0;
    let x_357 : vec4<f32> = x_179.unity_Builtins2Array[(x_354 / 7i)].unity_SHArArray;
    let x_358 : vec4<f32> = u_xlat2;
    u_xlat3.x = dot(x_357, x_358);
    let x_361 : i32 = u_xlati0;
    let x_364 : vec4<f32> = x_179.unity_Builtins2Array[(x_361 / 7i)].unity_SHAgArray;
    let x_365 : vec4<f32> = u_xlat2;
    u_xlat3.y = dot(x_364, x_365);
    let x_368 : i32 = u_xlati0;
    let x_371 : vec4<f32> = x_179.unity_Builtins2Array[(x_368 / 7i)].unity_SHAbArray;
    let x_372 : vec4<f32> = u_xlat2;
    u_xlat3.z = dot(x_371, x_372);
  }
  let x_375 : vec4<f32> = u_xlat3;
  let x_378 : vec3<f32> = vs_TEXCOORD3;
  let x_379 : vec3<f32> = (vec3<f32>(x_375.x, x_375.y, x_375.z) + x_378);
  let x_380 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_382 : vec4<f32> = u_xlat2;
  let x_385 : vec3<f32> = max(vec3<f32>(x_382.x, x_382.y, x_382.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_386 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_389 : vec3<f32> = vs_TEXCOORD1;
  let x_391 : vec4<f32> = x_47.x_WorldSpaceLightPos0;
  u_xlat0 = dot(x_389, vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_394 : f32 = u_xlat0;
  u_xlat0 = max(x_394, 0.0f);
  let x_396 : vec3<f32> = u_xlat6;
  let x_397 : vec3<f32> = u_xlat7;
  u_xlat1 = (x_396 * x_397);
  let x_399 : vec3<f32> = u_xlat6;
  let x_400 : vec4<f32> = u_xlat2;
  u_xlat6 = (x_399 * vec3<f32>(x_400.x, x_400.y, x_400.z));
  let x_405 : vec3<f32> = u_xlat1;
  let x_406 : f32 = u_xlat0;
  let x_409 : vec3<f32> = u_xlat6;
  let x_410 : vec3<f32> = ((x_405 * vec3<f32>(x_406, x_406, x_406)) + x_409);
  let x_411 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) @interpolate(flat) vs_SV_InstanceID0_param : u32, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_SV_InstanceID0 = vs_SV_InstanceID0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

