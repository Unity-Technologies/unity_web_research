type Arr = array<mat4x4<f32>, 4u>;

struct PGlobals {
  x_ZBufferParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  unity_CameraToWorld : mat4x4<f32>,
  unity_WorldToShadow : Arr,
  x_LightShadowData : vec4<f32>,
}

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_CameraDepthTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_37 : PGlobals;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(1) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(2) var sampler_ShadowMapTexture : sampler_comparison;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat2 : f32;
  var u_xlat4 : f32;
  var u_xlat1 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_23.x, x_23.y));
  u_xlat0.x = x_25.x;
  let x_42 : f32 = x_37.x_ZBufferParams.x;
  let x_44 : f32 = u_xlat0.x;
  let x_48 : f32 = x_37.x_ZBufferParams.y;
  u_xlat2 = ((x_42 * x_44) + x_48);
  let x_51 : f32 = u_xlat2;
  u_xlat2 = (1.0f / x_51);
  let x_54 : f32 = u_xlat2;
  let x_57 : f32 = u_xlat0.x;
  u_xlat4 = (-(x_54) + x_57);
  let x_62 : f32 = x_37.unity_OrthoParams.w;
  let x_63 : f32 = u_xlat4;
  let x_65 : f32 = u_xlat2;
  u_xlat2 = ((x_62 * x_63) + x_65);
  let x_68 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_68) + 1.0f);
  let x_76 : vec3<f32> = vs_TEXCOORD2;
  let x_79 : vec3<f32> = vs_TEXCOORD3;
  let x_80 : vec3<f32> = (-(x_76) + x_79);
  let x_81 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_80.x, x_80.y, x_80.z, x_81.w);
  let x_83 : vec4<f32> = u_xlat0;
  let x_85 : vec4<f32> = u_xlat1;
  let x_88 : vec3<f32> = vs_TEXCOORD2;
  let x_89 : vec3<f32> = ((vec3<f32>(x_83.x, x_83.x, x_83.x) * vec3<f32>(x_85.x, x_85.y, x_85.z)) + x_88);
  let x_90 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_89.x, x_90.y, x_89.y, x_89.z);
  let x_93 : vec3<f32> = vs_TEXCOORD1;
  let x_95 : f32 = u_xlat2;
  let x_98 : vec4<f32> = u_xlat0;
  let x_100 : vec3<f32> = ((-(x_93) * vec3<f32>(x_95, x_95, x_95)) + vec3<f32>(x_98.x, x_98.z, x_98.w));
  let x_101 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_100.x, x_101.y, x_100.y, x_100.z);
  let x_103 : f32 = u_xlat2;
  let x_105 : vec3<f32> = vs_TEXCOORD1;
  let x_106 : vec3<f32> = (vec3<f32>(x_103, x_103, x_103) * x_105);
  let x_107 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_106.x, x_106.y, x_106.z, x_107.w);
  let x_111 : vec4<f32> = x_37.unity_OrthoParams;
  let x_113 : vec4<f32> = u_xlat0;
  let x_116 : vec4<f32> = u_xlat1;
  let x_118 : vec3<f32> = ((vec3<f32>(x_111.w, x_111.w, x_111.w) * vec3<f32>(x_113.x, x_113.z, x_113.w)) + vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_119 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
  let x_121 : vec4<f32> = u_xlat0;
  let x_125 : vec4<f32> = x_37.unity_CameraToWorld[1i];
  u_xlat1 = (vec4<f32>(x_121.y, x_121.y, x_121.y, x_121.y) * x_125);
  let x_128 : vec4<f32> = x_37.unity_CameraToWorld[0i];
  let x_129 : vec4<f32> = u_xlat0;
  let x_132 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_128 * vec4<f32>(x_129.x, x_129.x, x_129.x, x_129.x)) + x_132);
  let x_135 : vec4<f32> = x_37.unity_CameraToWorld[2i];
  let x_136 : vec4<f32> = u_xlat0;
  let x_139 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_135 * vec4<f32>(x_136.z, x_136.z, x_136.z, x_136.z)) + x_139);
  let x_141 : vec4<f32> = u_xlat0;
  let x_144 : vec4<f32> = x_37.unity_CameraToWorld[3i];
  u_xlat0 = (x_141 + x_144);
  let x_146 : vec4<f32> = u_xlat0;
  let x_149 : vec4<f32> = x_37.unity_WorldToShadow[0i][1i];
  let x_151 : vec3<f32> = (vec3<f32>(x_146.y, x_146.y, x_146.y) * vec3<f32>(x_149.x, x_149.y, x_149.z));
  let x_152 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
  let x_155 : vec4<f32> = x_37.unity_WorldToShadow[0i][0i];
  let x_157 : vec4<f32> = u_xlat0;
  let x_160 : vec4<f32> = u_xlat1;
  let x_162 : vec3<f32> = ((vec3<f32>(x_155.x, x_155.y, x_155.z) * vec3<f32>(x_157.x, x_157.x, x_157.x)) + vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_163 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_166 : vec4<f32> = x_37.unity_WorldToShadow[0i][2i];
  let x_168 : vec4<f32> = u_xlat0;
  let x_171 : vec4<f32> = u_xlat1;
  let x_173 : vec3<f32> = ((vec3<f32>(x_166.x, x_166.y, x_166.z) * vec3<f32>(x_168.z, x_168.z, x_168.z)) + vec3<f32>(x_171.x, x_171.y, x_171.z));
  let x_174 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_177 : vec4<f32> = x_37.unity_WorldToShadow[0i][3i];
  let x_179 : vec4<f32> = u_xlat0;
  let x_182 : vec4<f32> = u_xlat0;
  let x_184 : vec3<f32> = ((vec3<f32>(x_177.x, x_177.y, x_177.z) * vec3<f32>(x_179.w, x_179.w, x_179.w)) + vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_185 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_189 : vec4<f32> = u_xlat0;
  let x_190 : vec2<f32> = vec2<f32>(x_189.x, x_189.y);
  let x_193 : f32 = u_xlat0.z;
  txVec0 = vec3<f32>(x_190.x, x_190.y, x_193);
  let x_205 : vec3<f32> = txVec0;
  let x_208 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_205.xy, x_205.z);
  u_xlat0.x = x_208;
  let x_212 : f32 = x_37.x_LightShadowData.x;
  u_xlat2 = (-(x_212) + 1.0f);
  let x_217 : vec4<f32> = u_xlat0;
  let x_219 : f32 = u_xlat2;
  let x_223 : vec4<f32> = x_37.x_LightShadowData;
  SV_Target0 = ((vec4<f32>(x_217.x, x_217.x, x_217.x, x_217.x) * vec4<f32>(x_219, x_219, x_219, x_219)) + vec4<f32>(x_223.x, x_223.x, x_223.x, x_223.x));
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

