struct PGlobals {
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  x_OcclusionStrength : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_36 : PGlobals;

var<private> SV_Target1 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(2) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_OcclusionMap : sampler;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatb2 : bool;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_206 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  let x_27 : vec3<f32> = vec3<f32>(x_25.x, x_25.y, x_25.z);
  let x_28 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_27.x, x_27.y, x_27.z, x_28.w);
  let x_31 : vec4<f32> = u_xlat0;
  let x_41 : vec4<f32> = x_36.x_Color;
  let x_43 : vec3<f32> = (vec3<f32>(x_31.x, x_31.y, x_31.z) * vec3<f32>(x_41.x, x_41.y, x_41.z));
  let x_44 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_43.x, x_43.y, x_43.z, x_44.w);
  let x_47 : vec4<f32> = x_36.x_Color;
  let x_49 : vec4<f32> = u_xlat0;
  let x_54 : vec3<f32> = ((vec3<f32>(x_47.x, x_47.y, x_47.z) * vec3<f32>(x_49.x, x_49.y, x_49.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_55 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_54.x, x_54.y, x_54.z, x_55.w);
  let x_62 : f32 = x_36.x_Metallic;
  let x_64 : f32 = x_36.x_Metallic;
  let x_66 : f32 = x_36.x_Metallic;
  let x_67 : vec3<f32> = vec3<f32>(x_62, x_64, x_66);
  let x_72 : vec4<f32> = u_xlat0;
  let x_77 : vec3<f32> = ((vec3<f32>(x_67.x, x_67.y, x_67.z) * vec3<f32>(x_72.x, x_72.y, x_72.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_78 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_77.x, x_77.y, x_77.z, x_78.w);
  let x_81 : f32 = x_36.x_Metallic;
  u_xlat0.x = ((-(x_81) * 0.959999979f) + 0.959999979f);
  let x_90 : vec4<f32> = u_xlat0;
  let x_92 : vec4<f32> = u_xlat1;
  let x_94 : vec3<f32> = (vec3<f32>(x_90.x, x_90.x, x_90.x) * vec3<f32>(x_92.x, x_92.y, x_92.z));
  let x_95 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_98 : vec4<f32> = vs_TEXCOORD4;
  let x_100 : vec4<f32> = vs_TEXCOORD4;
  u_xlat1.x = dot(vec3<f32>(x_98.x, x_98.y, x_98.z), vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_105 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_105);
  let x_108 : vec4<f32> = u_xlat1;
  let x_110 : vec4<f32> = vs_TEXCOORD4;
  let x_112 : vec3<f32> = (vec3<f32>(x_108.x, x_108.x, x_108.x) * vec3<f32>(x_110.x, x_110.y, x_110.z));
  let x_113 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_112.x, x_112.y, x_112.z, x_113.w);
  let x_121 : vec4<f32> = vs_TEXCOORD0;
  let x_123 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_121.x, x_121.y));
  u_xlat2.x = x_123.y;
  let x_131 : f32 = x_36.x_OcclusionStrength;
  u_xlat7.x = (-(x_131) + 1.0f);
  let x_137 : f32 = u_xlat2.x;
  let x_139 : f32 = x_36.x_OcclusionStrength;
  let x_142 : f32 = u_xlat7.x;
  u_xlat0.w = ((x_137 * x_139) + x_142);
  let x_151 : f32 = x_36.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_151 == 1.0f);
  let x_153 : bool = u_xlatb2;
  if (x_153) {
    let x_157 : f32 = x_36.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_157 == 1.0f);
    let x_160 : vec4<f32> = vs_TEXCOORD3;
    let x_165 : vec4<f32> = x_36.unity_ProbeVolumeWorldToObject[1i];
    u_xlat7 = (vec3<f32>(x_160.w, x_160.w, x_160.w) * vec3<f32>(x_165.x, x_165.y, x_165.z));
    let x_170 : vec4<f32> = x_36.unity_ProbeVolumeWorldToObject[0i];
    let x_173 : vec4<f32> = vs_TEXCOORD2;
    let x_176 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_170.x, x_170.y, x_170.z) * vec3<f32>(x_173.w, x_173.w, x_173.w)) + x_176);
    let x_180 : vec4<f32> = x_36.unity_ProbeVolumeWorldToObject[2i];
    let x_182 : vec4<f32> = vs_TEXCOORD4;
    let x_185 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_180.x, x_180.y, x_180.z) * vec3<f32>(x_182.w, x_182.w, x_182.w)) + x_185);
    let x_187 : vec3<f32> = u_xlat7;
    let x_189 : vec4<f32> = x_36.unity_ProbeVolumeWorldToObject[3i];
    u_xlat7 = (x_187 + vec3<f32>(x_189.x, x_189.y, x_189.z));
    let x_195 : f32 = vs_TEXCOORD2.w;
    u_xlat8.x = x_195;
    let x_198 : f32 = vs_TEXCOORD3.w;
    u_xlat8.y = x_198;
    let x_201 : f32 = vs_TEXCOORD4.w;
    u_xlat8.z = x_201;
    let x_204 : bool = u_xlatb2;
    if (x_204) {
      let x_209 : vec3<f32> = u_xlat7;
      x_206 = x_209;
    } else {
      let x_211 : vec3<f32> = u_xlat8;
      x_206 = x_211;
    }
    let x_212 : vec3<f32> = x_206;
    let x_213 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
    let x_215 : vec4<f32> = u_xlat2;
    let x_220 : vec3<f32> = x_36.unity_ProbeVolumeMin;
    let x_222 : vec3<f32> = (vec3<f32>(x_215.x, x_215.y, x_215.z) + -(x_220));
    let x_223 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
    let x_225 : vec4<f32> = u_xlat2;
    let x_229 : vec3<f32> = x_36.unity_ProbeVolumeSizeInv;
    let x_230 : vec3<f32> = (vec3<f32>(x_225.x, x_225.y, x_225.z) * x_229);
    let x_231 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_231.x, x_230.x, x_230.y, x_230.z);
    let x_234 : f32 = u_xlat2.y;
    u_xlat7.x = (x_234 * 0.25f);
    let x_240 : f32 = x_36.unity_ProbeVolumeParams.z;
    u_xlat3.x = (x_240 * 0.5f);
    let x_245 : f32 = x_36.unity_ProbeVolumeParams.z;
    u_xlat8.x = ((-(x_245) * 0.5f) + 0.25f);
    let x_251 : f32 = u_xlat7.x;
    let x_253 : f32 = u_xlat3.x;
    u_xlat7.x = max(x_251, x_253);
    let x_257 : f32 = u_xlat8.x;
    let x_259 : f32 = u_xlat7.x;
    u_xlat2.x = min(x_257, x_259);
    let x_270 : vec4<f32> = u_xlat2;
    let x_272 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_270.x, x_270.z, x_270.w));
    u_xlat3 = x_272;
    let x_274 : vec4<f32> = u_xlat2;
    let x_278 : vec3<f32> = (vec3<f32>(x_274.x, x_274.z, x_274.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_279 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
    let x_284 : vec4<f32> = u_xlat4;
    let x_286 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_284.x, x_284.y, x_284.z));
    u_xlat4 = x_286;
    let x_287 : vec4<f32> = u_xlat2;
    let x_290 : vec3<f32> = (vec3<f32>(x_287.x, x_287.z, x_287.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_291 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
    let x_296 : vec4<f32> = u_xlat2;
    let x_298 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_296.x, x_296.y, x_296.z));
    u_xlat2 = x_298;
    u_xlat1.w = 1.0f;
    let x_300 : vec4<f32> = u_xlat3;
    let x_301 : vec4<f32> = u_xlat1;
    u_xlat3.x = dot(x_300, x_301);
    let x_304 : vec4<f32> = u_xlat4;
    let x_305 : vec4<f32> = u_xlat1;
    u_xlat3.y = dot(x_304, x_305);
    let x_308 : vec4<f32> = u_xlat2;
    let x_309 : vec4<f32> = u_xlat1;
    u_xlat3.z = dot(x_308, x_309);
  } else {
    u_xlat1.w = 1.0f;
    let x_315 : vec4<f32> = x_36.unity_SHAr;
    let x_316 : vec4<f32> = u_xlat1;
    u_xlat3.x = dot(x_315, x_316);
    let x_320 : vec4<f32> = x_36.unity_SHAg;
    let x_321 : vec4<f32> = u_xlat1;
    u_xlat3.y = dot(x_320, x_321);
    let x_325 : vec4<f32> = x_36.unity_SHAb;
    let x_326 : vec4<f32> = u_xlat1;
    u_xlat3.z = dot(x_325, x_326);
  }
  let x_329 : vec4<f32> = u_xlat3;
  let x_332 : vec4<f32> = vs_TEXCOORD5;
  let x_334 : vec3<f32> = (vec3<f32>(x_329.x, x_329.y, x_329.z) + vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat2;
  let x_340 : vec3<f32> = max(vec3<f32>(x_337.x, x_337.y, x_337.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_341 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat0;
  let x_345 : vec4<f32> = u_xlat2;
  let x_347 : vec3<f32> = (vec3<f32>(x_343.w, x_343.w, x_343.w) * vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_350 : vec4<f32> = u_xlat0;
  let x_352 : vec4<f32> = u_xlat2;
  let x_354 : vec3<f32> = (vec3<f32>(x_350.x, x_350.y, x_350.z) * vec3<f32>(x_352.x, x_352.y, x_352.z));
  let x_355 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_358 : vec4<f32> = u_xlat2;
  let x_361 : vec3<f32> = exp2(-(vec3<f32>(x_358.x, x_358.y, x_358.z)));
  let x_362 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_365 : vec4<f32> = u_xlat1;
  let x_369 : vec3<f32> = ((vec3<f32>(x_365.x, x_365.y, x_365.z) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_370 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_373 : vec4<f32> = u_xlat0;
  SV_Target0 = x_373;
  let x_376 : f32 = x_36.x_Glossiness;
  SV_Target1.w = x_376;
  SV_Target2.w = 1.0f;
  SV_Target3.w = 1.0f;
  return;
}

struct main_out {
  @location(1)
  SV_Target1_1 : vec4<f32>,
  @location(3)
  SV_Target3_1 : vec4<f32>,
  @location(2)
  SV_Target2_1 : vec4<f32>,
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD4_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec4<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target1, SV_Target3, SV_Target2, SV_Target0);
}

