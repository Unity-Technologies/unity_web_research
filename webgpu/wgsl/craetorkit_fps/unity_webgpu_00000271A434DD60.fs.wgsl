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
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD2 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_31 : PGlobals;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(1) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(2) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> SV_Target1 : vec4<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb18 : bool;
  var u_xlat2 : vec4<f32>;
  var x_111 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat19 : f32;
  var u_xlat8 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD2;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = vec3<f32>(x_25.x, x_25.y, x_25.z);
  let x_27 : vec3<f32> = u_xlat0;
  let x_36 : vec4<f32> = x_31.x_Color;
  u_xlat0 = (x_27 * vec3<f32>(x_36.x, x_36.y, x_36.z));
  let x_40 : vec3<f32> = u_xlat0;
  let x_43 : vec4<f32> = vs_COLOR0;
  u_xlat1 = (x_40 * vec3<f32>(x_43.x, x_43.y, x_43.z));
  let x_54 : f32 = x_31.unity_ProbeVolumeParams.x;
  u_xlatb18 = (x_54 == 1.0f);
  let x_57 : bool = u_xlatb18;
  if (x_57) {
    let x_62 : f32 = x_31.unity_ProbeVolumeParams.y;
    u_xlatb18 = (x_62 == 1.0f);
    let x_68 : vec3<f32> = vs_TEXCOORD1;
    let x_73 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[1i];
    let x_75 : vec3<f32> = (vec3<f32>(x_68.y, x_68.y, x_68.y) * vec3<f32>(x_73.x, x_73.y, x_73.z));
    let x_76 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_75.x, x_75.y, x_75.z, x_76.w);
    let x_80 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[0i];
    let x_82 : vec3<f32> = vs_TEXCOORD1;
    let x_85 : vec4<f32> = u_xlat2;
    let x_87 : vec3<f32> = ((vec3<f32>(x_80.x, x_80.y, x_80.z) * vec3<f32>(x_82.x, x_82.x, x_82.x)) + vec3<f32>(x_85.x, x_85.y, x_85.z));
    let x_88 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_87.x, x_87.y, x_87.z, x_88.w);
    let x_92 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[2i];
    let x_94 : vec3<f32> = vs_TEXCOORD1;
    let x_97 : vec4<f32> = u_xlat2;
    let x_99 : vec3<f32> = ((vec3<f32>(x_92.x, x_92.y, x_92.z) * vec3<f32>(x_94.z, x_94.z, x_94.z)) + vec3<f32>(x_97.x, x_97.y, x_97.z));
    let x_100 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_99.x, x_99.y, x_99.z, x_100.w);
    let x_102 : vec4<f32> = u_xlat2;
    let x_105 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[3i];
    let x_107 : vec3<f32> = (vec3<f32>(x_102.x, x_102.y, x_102.z) + vec3<f32>(x_105.x, x_105.y, x_105.z));
    let x_108 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
    let x_110 : bool = u_xlatb18;
    if (x_110) {
      let x_114 : vec4<f32> = u_xlat2;
      x_111 = vec3<f32>(x_114.x, x_114.y, x_114.z);
    } else {
      let x_117 : vec3<f32> = vs_TEXCOORD1;
      x_111 = x_117;
    }
    let x_118 : vec3<f32> = x_111;
    let x_119 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
    let x_121 : vec4<f32> = u_xlat2;
    let x_126 : vec3<f32> = x_31.unity_ProbeVolumeMin;
    let x_128 : vec3<f32> = (vec3<f32>(x_121.x, x_121.y, x_121.z) + -(x_126));
    let x_129 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
    let x_131 : vec4<f32> = u_xlat2;
    let x_135 : vec3<f32> = x_31.unity_ProbeVolumeSizeInv;
    let x_136 : vec3<f32> = (vec3<f32>(x_131.x, x_131.y, x_131.z) * x_135);
    let x_137 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_137.x, x_136.x, x_136.y, x_136.z);
    let x_142 : f32 = u_xlat2.y;
    u_xlat18 = (x_142 * 0.25f);
    let x_148 : f32 = x_31.unity_ProbeVolumeParams.z;
    u_xlat19 = (x_148 * 0.5f);
    let x_153 : f32 = x_31.unity_ProbeVolumeParams.z;
    u_xlat8 = ((-(x_153) * 0.5f) + 0.25f);
    let x_157 : f32 = u_xlat18;
    let x_158 : f32 = u_xlat19;
    u_xlat18 = max(x_157, x_158);
    let x_160 : f32 = u_xlat8;
    let x_161 : f32 = u_xlat18;
    u_xlat2.x = min(x_160, x_161);
    let x_173 : vec4<f32> = u_xlat2;
    let x_175 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_173.x, x_173.z, x_173.w));
    u_xlat3 = x_175;
    let x_177 : vec4<f32> = u_xlat2;
    let x_181 : vec3<f32> = (vec3<f32>(x_177.x, x_177.z, x_177.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_182 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
    let x_187 : vec4<f32> = u_xlat4;
    let x_189 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_187.x, x_187.y, x_187.z));
    u_xlat4 = x_189;
    let x_190 : vec4<f32> = u_xlat2;
    let x_193 : vec3<f32> = (vec3<f32>(x_190.x, x_190.z, x_190.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_194 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
    let x_199 : vec4<f32> = u_xlat2;
    let x_201 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_199.x, x_199.y, x_199.z));
    u_xlat2 = x_201;
    let x_204 : vec3<f32> = vs_TEXCOORD0;
    let x_205 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
    u_xlat5.w = 1.0f;
    let x_209 : vec4<f32> = u_xlat3;
    let x_210 : vec4<f32> = u_xlat5;
    u_xlat3.x = dot(x_209, x_210);
    let x_213 : vec4<f32> = u_xlat4;
    let x_214 : vec4<f32> = u_xlat5;
    u_xlat3.y = dot(x_213, x_214);
    let x_217 : vec4<f32> = u_xlat2;
    let x_218 : vec4<f32> = u_xlat5;
    u_xlat3.z = dot(x_217, x_218);
  } else {
    let x_222 : vec3<f32> = vs_TEXCOORD0;
    let x_223 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
    u_xlat2.w = 1.0f;
    let x_227 : vec4<f32> = x_31.unity_SHAr;
    let x_228 : vec4<f32> = u_xlat2;
    u_xlat3.x = dot(x_227, x_228);
    let x_232 : vec4<f32> = x_31.unity_SHAg;
    let x_233 : vec4<f32> = u_xlat2;
    u_xlat3.y = dot(x_232, x_233);
    let x_237 : vec4<f32> = x_31.unity_SHAb;
    let x_238 : vec4<f32> = u_xlat2;
    u_xlat3.z = dot(x_237, x_238);
  }
  let x_241 : vec4<f32> = u_xlat3;
  let x_244 : vec3<f32> = vs_TEXCOORD5;
  let x_245 : vec3<f32> = (vec3<f32>(x_241.x, x_241.y, x_241.z) + x_244);
  let x_246 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
  let x_248 : vec4<f32> = u_xlat2;
  let x_251 : vec3<f32> = max(vec3<f32>(x_248.x, x_248.y, x_248.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_252 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_254 : vec3<f32> = u_xlat0;
  let x_255 : vec4<f32> = vs_COLOR0;
  u_xlat0 = ((x_254 * vec3<f32>(x_255.x, x_255.y, x_255.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_265 : f32 = x_31.x_Metallic;
  let x_267 : vec3<f32> = u_xlat0;
  let x_271 : vec3<f32> = ((vec3<f32>(x_265, x_265, x_265) * x_267) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_272 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
  let x_275 : f32 = x_31.x_Metallic;
  u_xlat0.x = ((-(x_275) * 0.959999979f) + 0.959999979f);
  let x_281 : vec3<f32> = u_xlat0;
  let x_283 : vec3<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_281.x, x_281.x, x_281.x) * x_283);
  let x_285 : vec4<f32> = u_xlat2;
  let x_287 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_285.x, x_285.y, x_285.z) * x_287);
  let x_290 : vec3<f32> = u_xlat1;
  let x_292 : vec3<f32> = exp2(-(x_290));
  let x_293 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_296 : vec3<f32> = u_xlat0;
  let x_297 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
  SV_Target0.w = 1.0f;
  let x_303 : f32 = x_31.x_Glossiness;
  SV_Target1.w = x_303;
  let x_306 : vec3<f32> = vs_TEXCOORD0;
  let x_309 : vec3<f32> = ((x_306 * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_310 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  SV_Target2.w = 1.0f;
  SV_Target3.w = 1.0f;
  return;
}

struct main_out {
  @location(1)
  SV_Target1_1 : vec4<f32>,
  @location(3)
  SV_Target3_1 : vec4<f32>,
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(2)
  SV_Target2_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD2_param : vec2<f32>, @location(2) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec3<f32>, @location(4) vs_TEXCOORD5_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target1, SV_Target3, SV_Target0, SV_Target2);
}

