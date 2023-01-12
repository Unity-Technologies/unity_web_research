struct PGlobals {
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
  x_Metallic : f32,
  x_Glossiness : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(3) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(1) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat19 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlatb19 : bool;
  var u_xlat3 : vec4<f32>;
  var x_153 : vec3<f32>;
  var u_xlat20 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
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
  u_xlat18 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_77 : vec4<f32> = vs_TEXCOORD4;
  let x_79 : vec4<f32> = vs_TEXCOORD4;
  u_xlat19 = dot(vec3<f32>(x_77.x, x_77.y, x_77.z), vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_82 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_82);
  let x_85 : f32 = u_xlat19;
  let x_87 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_85, x_85, x_85) * vec3<f32>(x_87.x, x_87.y, x_87.z));
  let x_97 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb19 = (x_97 == 1.0f);
  let x_100 : bool = u_xlatb19;
  if (x_100) {
    let x_105 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb19 = (x_105 == 1.0f);
    let x_111 : vec3<f32> = vs_TEXCOORD5;
    let x_115 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_117 : vec3<f32> = (vec3<f32>(x_111.y, x_111.y, x_111.y) * vec3<f32>(x_115.x, x_115.y, x_115.z));
    let x_118 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_117.x, x_117.y, x_117.z, x_118.w);
    let x_122 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_124 : vec3<f32> = vs_TEXCOORD5;
    let x_127 : vec4<f32> = u_xlat3;
    let x_129 : vec3<f32> = ((vec3<f32>(x_122.x, x_122.y, x_122.z) * vec3<f32>(x_124.x, x_124.x, x_124.x)) + vec3<f32>(x_127.x, x_127.y, x_127.z));
    let x_130 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_129.x, x_129.y, x_129.z, x_130.w);
    let x_133 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_135 : vec3<f32> = vs_TEXCOORD5;
    let x_138 : vec4<f32> = u_xlat3;
    let x_140 : vec3<f32> = ((vec3<f32>(x_133.x, x_133.y, x_133.z) * vec3<f32>(x_135.z, x_135.z, x_135.z)) + vec3<f32>(x_138.x, x_138.y, x_138.z));
    let x_141 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_140.x, x_140.y, x_140.z, x_141.w);
    let x_143 : vec4<f32> = u_xlat3;
    let x_147 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_149 : vec3<f32> = (vec3<f32>(x_143.x, x_143.y, x_143.z) + vec3<f32>(x_147.x, x_147.y, x_147.z));
    let x_150 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
    let x_152 : bool = u_xlatb19;
    if (x_152) {
      let x_156 : vec4<f32> = u_xlat3;
      x_153 = vec3<f32>(x_156.x, x_156.y, x_156.z);
    } else {
      let x_159 : vec3<f32> = vs_TEXCOORD5;
      x_153 = x_159;
    }
    let x_160 : vec3<f32> = x_153;
    let x_161 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
    let x_163 : vec4<f32> = u_xlat3;
    let x_168 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_170 : vec3<f32> = (vec3<f32>(x_163.x, x_163.y, x_163.z) + -(x_168));
    let x_171 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
    let x_173 : vec4<f32> = u_xlat3;
    let x_176 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_177 : vec3<f32> = (vec3<f32>(x_173.x, x_173.y, x_173.z) * x_176);
    let x_178 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_178.x, x_177.x, x_177.y, x_177.z);
    let x_181 : f32 = u_xlat3.y;
    u_xlat19 = ((x_181 * 0.25f) + 0.75f);
    let x_189 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat20 = ((x_189 * 0.5f) + 0.75f);
    let x_193 : f32 = u_xlat19;
    let x_194 : f32 = u_xlat20;
    u_xlat3.x = max(x_193, x_194);
    let x_205 : vec4<f32> = u_xlat3;
    let x_207 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_205.x, x_205.z, x_205.w));
    u_xlat3 = x_207;
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
    u_xlat3.w = 1.0f;
  }
  let x_214 : vec4<f32> = u_xlat3;
  let x_216 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat19 = dot(x_214, x_216);
  let x_218 : f32 = u_xlat19;
  u_xlat19 = clamp(x_218, 0.0f, 1.0f);
  let x_221 : f32 = u_xlat19;
  let x_225 : vec4<f32> = x_33.x_LightColor0;
  let x_227 : vec3<f32> = (vec3<f32>(x_221, x_221, x_221) * vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_228 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_231 : vec4<f32> = vs_TEXCOORD1;
  let x_234 : vec3<f32> = u_xlat2;
  u_xlat19 = dot(-(vec3<f32>(x_231.x, x_231.y, x_231.z)), x_234);
  let x_236 : f32 = u_xlat19;
  let x_237 : f32 = u_xlat19;
  u_xlat19 = (x_236 + x_237);
  let x_240 : vec3<f32> = u_xlat2;
  let x_241 : f32 = u_xlat19;
  let x_245 : vec4<f32> = vs_TEXCOORD1;
  u_xlat4 = ((x_240 * -(vec3<f32>(x_241, x_241, x_241))) + -(vec3<f32>(x_245.x, x_245.y, x_245.z)));
  let x_253 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_253;
  let x_257 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_257;
  let x_260 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_260;
  let x_262 : vec3<f32> = u_xlat2;
  let x_263 : vec3<f32> = u_xlat5;
  u_xlat19 = dot(x_262, x_263);
  let x_265 : f32 = u_xlat19;
  u_xlat19 = clamp(x_265, 0.0f, 1.0f);
  let x_267 : vec3<f32> = u_xlat4;
  let x_268 : vec3<f32> = u_xlat5;
  u_xlat2.x = dot(x_267, x_268);
  let x_272 : f32 = u_xlat2.x;
  let x_274 : f32 = u_xlat2.x;
  u_xlat2.x = (x_272 * x_274);
  let x_278 : f32 = u_xlat2.x;
  let x_280 : f32 = u_xlat2.x;
  u_xlat2.x = (x_278 * x_280);
  let x_285 : f32 = x_33.x_Glossiness;
  u_xlat2.y = (-(x_285) + 1.0f);
  let x_294 : vec3<f32> = u_xlat2;
  let x_296 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_294.x, x_294.y));
  u_xlat2.x = x_296.x;
  let x_300 : f32 = u_xlat2.x;
  u_xlat2.x = (x_300 * 16.0f);
  let x_304 : vec3<f32> = u_xlat0;
  let x_305 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_304 * vec3<f32>(x_305.x, x_305.x, x_305.x));
  let x_308 : vec3<f32> = u_xlat1;
  let x_309 : f32 = u_xlat18;
  let x_312 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_308 * vec3<f32>(x_309, x_309, x_309)) + x_312);
  let x_314 : f32 = u_xlat19;
  let x_316 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_314, x_314, x_314) * vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_321 : vec3<f32> = u_xlat0;
  let x_322 : vec3<f32> = u_xlat1;
  let x_323 : vec3<f32> = (x_321 * x_322);
  let x_324 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

