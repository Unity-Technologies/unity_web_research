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
  unity_WorldToLight : mat4x4<f32>,
  x_Color : vec4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_31 : PGlobals;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(3) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(4) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD5 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb9 : bool;
  var u_xlat2 : vec4<f32>;
  var x_143 : vec3<f32>;
  var u_xlat9 : f32;
  var u_xlat7 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = vec3<f32>(x_25.x, x_25.y, x_25.z);
  let x_27 : vec3<f32> = u_xlat0;
  let x_36 : vec4<f32> = x_31.x_Color;
  u_xlat0 = (x_27 * vec3<f32>(x_36.x, x_36.y, x_36.z));
  let x_42 : vec3<f32> = vs_TEXCOORD2;
  let x_47 : vec4<f32> = x_31.unity_WorldToLight[1i];
  let x_49 : vec2<f32> = (vec2<f32>(x_42.y, x_42.y) * vec2<f32>(x_47.x, x_47.y));
  let x_50 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_49.x, x_49.y, x_50.z);
  let x_54 : vec4<f32> = x_31.unity_WorldToLight[0i];
  let x_56 : vec3<f32> = vs_TEXCOORD2;
  let x_59 : vec3<f32> = u_xlat1;
  let x_61 : vec2<f32> = ((vec2<f32>(x_54.x, x_54.y) * vec2<f32>(x_56.x, x_56.x)) + vec2<f32>(x_59.x, x_59.y));
  let x_62 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_61.x, x_61.y, x_62.z);
  let x_66 : vec4<f32> = x_31.unity_WorldToLight[2i];
  let x_68 : vec3<f32> = vs_TEXCOORD2;
  let x_71 : vec3<f32> = u_xlat1;
  let x_73 : vec2<f32> = ((vec2<f32>(x_66.x, x_66.y) * vec2<f32>(x_68.z, x_68.z)) + vec2<f32>(x_71.x, x_71.y));
  let x_74 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_73.x, x_73.y, x_74.z);
  let x_76 : vec3<f32> = u_xlat1;
  let x_80 : vec4<f32> = x_31.unity_WorldToLight[3i];
  let x_82 : vec2<f32> = (vec2<f32>(x_76.x, x_76.y) + vec2<f32>(x_80.x, x_80.y));
  let x_83 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_82.x, x_82.y, x_83.z);
  let x_92 : f32 = x_31.unity_ProbeVolumeParams.x;
  u_xlatb9 = (x_92 == 1.0f);
  let x_95 : bool = u_xlatb9;
  if (x_95) {
    let x_100 : f32 = x_31.unity_ProbeVolumeParams.y;
    u_xlatb9 = (x_100 == 1.0f);
    let x_104 : vec3<f32> = vs_TEXCOORD2;
    let x_107 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[1i];
    let x_109 : vec3<f32> = (vec3<f32>(x_104.y, x_104.y, x_104.y) * vec3<f32>(x_107.x, x_107.y, x_107.z));
    let x_110 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_109.x, x_109.y, x_109.z, x_110.w);
    let x_113 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[0i];
    let x_115 : vec3<f32> = vs_TEXCOORD2;
    let x_118 : vec4<f32> = u_xlat2;
    let x_120 : vec3<f32> = ((vec3<f32>(x_113.x, x_113.y, x_113.z) * vec3<f32>(x_115.x, x_115.x, x_115.x)) + vec3<f32>(x_118.x, x_118.y, x_118.z));
    let x_121 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_120.x, x_120.y, x_120.z, x_121.w);
    let x_124 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[2i];
    let x_126 : vec3<f32> = vs_TEXCOORD2;
    let x_129 : vec4<f32> = u_xlat2;
    let x_131 : vec3<f32> = ((vec3<f32>(x_124.x, x_124.y, x_124.z) * vec3<f32>(x_126.z, x_126.z, x_126.z)) + vec3<f32>(x_129.x, x_129.y, x_129.z));
    let x_132 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
    let x_134 : vec4<f32> = u_xlat2;
    let x_137 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[3i];
    let x_139 : vec3<f32> = (vec3<f32>(x_134.x, x_134.y, x_134.z) + vec3<f32>(x_137.x, x_137.y, x_137.z));
    let x_140 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_139.x, x_139.y, x_139.z, x_140.w);
    let x_142 : bool = u_xlatb9;
    if (x_142) {
      let x_146 : vec4<f32> = u_xlat2;
      x_143 = vec3<f32>(x_146.x, x_146.y, x_146.z);
    } else {
      let x_149 : vec3<f32> = vs_TEXCOORD2;
      x_143 = x_149;
    }
    let x_150 : vec3<f32> = x_143;
    let x_151 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
    let x_153 : vec4<f32> = u_xlat2;
    let x_158 : vec3<f32> = x_31.unity_ProbeVolumeMin;
    let x_160 : vec3<f32> = (vec3<f32>(x_153.x, x_153.y, x_153.z) + -(x_158));
    let x_161 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
    let x_163 : vec4<f32> = u_xlat2;
    let x_167 : vec3<f32> = x_31.unity_ProbeVolumeSizeInv;
    let x_168 : vec3<f32> = (vec3<f32>(x_163.x, x_163.y, x_163.z) * x_167);
    let x_169 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_169.x, x_168.x, x_168.y, x_168.z);
    let x_174 : f32 = u_xlat2.y;
    u_xlat9 = ((x_174 * 0.25f) + 0.75f);
    let x_182 : f32 = x_31.unity_ProbeVolumeParams.z;
    u_xlat7 = ((x_182 * 0.5f) + 0.75f);
    let x_186 : f32 = u_xlat9;
    let x_187 : f32 = u_xlat7;
    u_xlat2.x = max(x_186, x_187);
    let x_198 : vec4<f32> = u_xlat2;
    let x_200 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_198.x, x_198.z, x_198.w));
    u_xlat2 = x_200;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_207 : vec4<f32> = u_xlat2;
  let x_209 : vec4<f32> = x_31.unity_OcclusionMaskSelector;
  u_xlat9 = dot(x_207, x_209);
  let x_211 : f32 = u_xlat9;
  u_xlat9 = clamp(x_211, 0.0f, 1.0f);
  let x_219 : vec3<f32> = u_xlat1;
  let x_221 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_219.x, x_219.y));
  u_xlat1.x = x_221.w;
  let x_224 : f32 = u_xlat9;
  let x_226 : f32 = u_xlat1.x;
  u_xlat9 = (x_224 * x_226);
  let x_228 : f32 = u_xlat9;
  let x_232 : vec4<f32> = x_31.x_LightColor0;
  u_xlat1 = (vec3<f32>(x_228, x_228, x_228) * vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_236 : vec3<f32> = vs_TEXCOORD1;
  let x_238 : vec4<f32> = x_31.x_WorldSpaceLightPos0;
  u_xlat9 = dot(x_236, vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_241 : f32 = u_xlat9;
  u_xlat9 = max(x_241, 0.0f);
  let x_243 : vec3<f32> = u_xlat0;
  let x_244 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_243 * x_244);
  let x_246 : f32 = u_xlat9;
  let x_248 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_246, x_246, x_246) * x_248);
  let x_252 : f32 = vs_TEXCOORD5;
  u_xlat9 = x_252;
  let x_253 : f32 = u_xlat9;
  u_xlat9 = clamp(x_253, 0.0f, 1.0f);
  let x_257 : vec3<f32> = u_xlat0;
  let x_258 : f32 = u_xlat9;
  let x_260 : vec3<f32> = (x_257 * vec3<f32>(x_258, x_258, x_258));
  let x_261 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD5_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

