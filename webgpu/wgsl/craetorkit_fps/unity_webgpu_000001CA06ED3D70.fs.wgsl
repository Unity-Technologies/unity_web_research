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

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

var<private> SV_Target1 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(1) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(3) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb1 : bool;
  var u_xlat8 : vec3<f32>;
  var x_205 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_27 : vec4<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_33.x_Color;
  u_xlat1 = (vec4<f32>(x_27.w, x_27.x, x_27.y, x_27.z) * vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z));
  let x_41 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_33.x_Color;
  let x_49 : vec3<f32> = ((vec3<f32>(x_41.x, x_41.y, x_41.z) * vec3<f32>(x_44.x, x_44.y, x_44.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_50 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_49.x, x_49.y, x_49.z, x_50.w);
  let x_57 : f32 = x_33.x_Metallic;
  let x_59 : f32 = x_33.x_Metallic;
  let x_61 : f32 = x_33.x_Metallic;
  let x_62 : vec3<f32> = vec3<f32>(x_57, x_59, x_61);
  let x_67 : vec4<f32> = u_xlat0;
  let x_72 : vec3<f32> = ((vec3<f32>(x_62.x, x_62.y, x_62.z) * vec3<f32>(x_67.x, x_67.y, x_67.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_73 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_72.x, x_72.y, x_72.z, x_73.w);
  let x_76 : f32 = x_33.x_Metallic;
  u_xlat0.x = ((-(x_76) * 0.959999979f) + 0.959999979f);
  let x_85 : vec4<f32> = u_xlat0;
  let x_87 : vec4<f32> = u_xlat1;
  let x_89 : vec3<f32> = (vec3<f32>(x_85.x, x_85.x, x_85.x) * vec3<f32>(x_87.y, x_87.z, x_87.w));
  let x_90 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_89.x, x_89.y, x_89.z, x_90.w);
  let x_94 : vec4<f32> = vs_TEXCOORD4;
  let x_96 : vec4<f32> = vs_TEXCOORD4;
  u_xlat15 = dot(vec3<f32>(x_94.x, x_94.y, x_94.z), vec3<f32>(x_96.x, x_96.y, x_96.z));
  let x_99 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_99);
  let x_102 : f32 = u_xlat15;
  let x_104 : vec4<f32> = vs_TEXCOORD4;
  let x_106 : vec3<f32> = (vec3<f32>(x_102, x_102, x_102) * vec3<f32>(x_104.x, x_104.y, x_104.z));
  let x_107 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_106.x, x_106.y, x_106.z, x_107.w);
  let x_109 : vec4<f32> = u_xlat1;
  let x_111 : vec4<f32> = u_xlat0;
  let x_113 : vec3<f32> = (vec3<f32>(x_109.x, x_109.x, x_109.x) * vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_114 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_121 : vec4<f32> = vs_TEXCOORD0;
  let x_123 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_121.x, x_121.y));
  u_xlat1.x = x_123.y;
  let x_131 : f32 = x_33.x_OcclusionStrength;
  u_xlat6.x = (-(x_131) + 1.0f);
  let x_137 : f32 = u_xlat1.x;
  let x_139 : f32 = x_33.x_OcclusionStrength;
  let x_142 : f32 = u_xlat6.x;
  u_xlat0.w = ((x_137 * x_139) + x_142);
  let x_151 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb1 = (x_151 == 1.0f);
  let x_153 : bool = u_xlatb1;
  if (x_153) {
    let x_157 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb1 = (x_157 == 1.0f);
    let x_160 : vec4<f32> = vs_TEXCOORD3;
    let x_165 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    u_xlat6 = (vec3<f32>(x_160.w, x_160.w, x_160.w) * vec3<f32>(x_165.x, x_165.y, x_165.z));
    let x_170 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_173 : vec4<f32> = vs_TEXCOORD2;
    let x_176 : vec3<f32> = u_xlat6;
    u_xlat6 = ((vec3<f32>(x_170.x, x_170.y, x_170.z) * vec3<f32>(x_173.w, x_173.w, x_173.w)) + x_176);
    let x_180 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_182 : vec4<f32> = vs_TEXCOORD4;
    let x_185 : vec3<f32> = u_xlat6;
    u_xlat6 = ((vec3<f32>(x_180.x, x_180.y, x_180.z) * vec3<f32>(x_182.w, x_182.w, x_182.w)) + x_185);
    let x_187 : vec3<f32> = u_xlat6;
    let x_189 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    u_xlat6 = (x_187 + vec3<f32>(x_189.x, x_189.y, x_189.z));
    let x_195 : f32 = vs_TEXCOORD2.w;
    u_xlat8.x = x_195;
    let x_198 : f32 = vs_TEXCOORD3.w;
    u_xlat8.y = x_198;
    let x_201 : f32 = vs_TEXCOORD4.w;
    u_xlat8.z = x_201;
    let x_204 : bool = u_xlatb1;
    if (x_204) {
      let x_208 : vec3<f32> = u_xlat6;
      x_205 = x_208;
    } else {
      let x_210 : vec3<f32> = u_xlat8;
      x_205 = x_210;
    }
    let x_211 : vec3<f32> = x_205;
    let x_212 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
    let x_214 : vec4<f32> = u_xlat1;
    let x_219 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_221 : vec3<f32> = (vec3<f32>(x_214.x, x_214.y, x_214.z) + -(x_219));
    let x_222 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
    let x_224 : vec4<f32> = u_xlat1;
    let x_228 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_229 : vec3<f32> = (vec3<f32>(x_224.x, x_224.y, x_224.z) * x_228);
    let x_230 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_230.x, x_229.x, x_229.y, x_229.z);
    let x_233 : f32 = u_xlat1.y;
    u_xlat6.x = (x_233 * 0.25f);
    let x_239 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat3.x = (x_239 * 0.5f);
    let x_244 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat8.x = ((-(x_244) * 0.5f) + 0.25f);
    let x_250 : f32 = u_xlat6.x;
    let x_252 : f32 = u_xlat3.x;
    u_xlat6.x = max(x_250, x_252);
    let x_256 : f32 = u_xlat8.x;
    let x_258 : f32 = u_xlat6.x;
    u_xlat1.x = min(x_256, x_258);
    let x_269 : vec4<f32> = u_xlat1;
    let x_271 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_269.x, x_269.z, x_269.w));
    u_xlat3 = x_271;
    let x_273 : vec4<f32> = u_xlat1;
    let x_277 : vec3<f32> = (vec3<f32>(x_273.x, x_273.z, x_273.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_278 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
    let x_283 : vec4<f32> = u_xlat4;
    let x_285 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_283.x, x_283.y, x_283.z));
    u_xlat4 = x_285;
    let x_286 : vec4<f32> = u_xlat1;
    let x_289 : vec3<f32> = (vec3<f32>(x_286.x, x_286.z, x_286.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_290 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
    let x_295 : vec4<f32> = u_xlat1;
    let x_297 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_295.x, x_295.y, x_295.z));
    u_xlat1 = x_297;
    u_xlat2.w = 1.0f;
    let x_299 : vec4<f32> = u_xlat3;
    let x_300 : vec4<f32> = u_xlat2;
    u_xlat3.x = dot(x_299, x_300);
    let x_303 : vec4<f32> = u_xlat4;
    let x_304 : vec4<f32> = u_xlat2;
    u_xlat3.y = dot(x_303, x_304);
    let x_307 : vec4<f32> = u_xlat1;
    let x_308 : vec4<f32> = u_xlat2;
    u_xlat3.z = dot(x_307, x_308);
  } else {
    u_xlat2.w = 1.0f;
    let x_314 : vec4<f32> = x_33.unity_SHAr;
    let x_315 : vec4<f32> = u_xlat2;
    u_xlat3.x = dot(x_314, x_315);
    let x_319 : vec4<f32> = x_33.unity_SHAg;
    let x_320 : vec4<f32> = u_xlat2;
    u_xlat3.y = dot(x_319, x_320);
    let x_324 : vec4<f32> = x_33.unity_SHAb;
    let x_325 : vec4<f32> = u_xlat2;
    u_xlat3.z = dot(x_324, x_325);
  }
  let x_328 : vec4<f32> = u_xlat3;
  let x_331 : vec4<f32> = vs_TEXCOORD5;
  let x_333 : vec3<f32> = (vec3<f32>(x_328.x, x_328.y, x_328.z) + vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat1;
  let x_339 : vec3<f32> = max(vec3<f32>(x_336.x, x_336.y, x_336.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_340 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_342 : vec4<f32> = u_xlat0;
  let x_344 : vec4<f32> = u_xlat1;
  let x_346 : vec3<f32> = (vec3<f32>(x_342.w, x_342.w, x_342.w) * vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_350 : vec4<f32> = u_xlat0;
  let x_352 : vec4<f32> = u_xlat1;
  let x_354 : vec3<f32> = (vec3<f32>(x_350.x, x_350.y, x_350.z) * vec3<f32>(x_352.x, x_352.y, x_352.z));
  let x_355 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_358 : vec4<f32> = u_xlat2;
  let x_362 : vec3<f32> = ((vec3<f32>(x_358.x, x_358.y, x_358.z) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_363 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_366 : vec4<f32> = u_xlat0;
  SV_Target0 = x_366;
  let x_369 : f32 = x_33.x_Glossiness;
  SV_Target1.w = x_369;
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

