struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  unity_MatrixInvVP : mat4x4<f32>,
  x_PrevViewProjMatrix : mat4x4<f32>,
  x_NonJitteredViewProjMatrix : mat4x4<f32>,
}

var<private> gl_FragCoord : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_CameraDepthTexture : sampler;

var<private> gl_FragDepth : f32;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat6 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat9 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_28 : vec4<f32> = hlslcc_FragCoord;
  let x_38 : vec4<f32> = x_33.x_ScaledScreenParams;
  let x_40 : vec2<f32> = (vec2<f32>(x_28.x, x_28.y) / vec2<f32>(x_38.x, x_38.y));
  let x_41 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_40.x, x_40.y, x_41.z, x_41.w);
  let x_45 : vec4<f32> = u_xlat0;
  u_xlat6 = ((vec2<f32>(x_45.x, x_45.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_63 : vec4<f32> = u_xlat0;
  let x_69 : f32 = x_33.x_GlobalMipBias.x;
  let x_70 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_63.x, x_63.y), x_69);
  u_xlat0.x = x_70.x;
  let x_75 : vec2<f32> = u_xlat6;
  let x_80 : vec4<f32> = x_33.unity_MatrixInvVP[1i];
  u_xlat1 = (-(vec4<f32>(x_75.y, x_75.y, x_75.y, x_75.y)) * x_80);
  let x_83 : vec4<f32> = x_33.unity_MatrixInvVP[0i];
  let x_84 : vec2<f32> = u_xlat6;
  let x_87 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_83 * vec4<f32>(x_84.x, x_84.x, x_84.x, x_84.x)) + x_87);
  let x_90 : vec4<f32> = x_33.unity_MatrixInvVP[2i];
  let x_91 : vec4<f32> = u_xlat0;
  let x_94 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_90 * vec4<f32>(x_91.x, x_91.x, x_91.x, x_91.x)) + x_94);
  let x_99 : f32 = u_xlat0.x;
  gl_FragDepth = x_99;
  let x_100 : vec4<f32> = u_xlat1;
  let x_103 : vec4<f32> = x_33.unity_MatrixInvVP[3i];
  u_xlat0 = (x_100 + x_103);
  let x_105 : vec4<f32> = u_xlat0;
  let x_107 : vec4<f32> = u_xlat0;
  let x_109 : vec3<f32> = (vec3<f32>(x_105.x, x_105.y, x_105.z) / vec3<f32>(x_107.w, x_107.w, x_107.w));
  let x_110 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_109.x, x_109.y, x_109.z, x_110.w);
  let x_112 : vec4<f32> = u_xlat0;
  let x_115 : vec4<f32> = x_33.x_PrevViewProjMatrix[1i];
  let x_117 : vec3<f32> = (vec3<f32>(x_112.y, x_112.y, x_112.y) * vec3<f32>(x_115.x, x_115.y, x_115.w));
  let x_118 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_117.x, x_117.y, x_117.z, x_118.w);
  let x_121 : vec4<f32> = x_33.x_PrevViewProjMatrix[0i];
  let x_123 : vec4<f32> = u_xlat0;
  let x_126 : vec4<f32> = u_xlat1;
  let x_128 : vec3<f32> = ((vec3<f32>(x_121.x, x_121.y, x_121.w) * vec3<f32>(x_123.x, x_123.x, x_123.x)) + vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_129 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
  let x_132 : vec4<f32> = x_33.x_PrevViewProjMatrix[2i];
  let x_134 : vec4<f32> = u_xlat0;
  let x_137 : vec4<f32> = u_xlat1;
  let x_139 : vec3<f32> = ((vec3<f32>(x_132.x, x_132.y, x_132.w) * vec3<f32>(x_134.z, x_134.z, x_134.z)) + vec3<f32>(x_137.x, x_137.y, x_137.z));
  let x_140 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_139.x, x_139.y, x_139.z, x_140.w);
  let x_142 : vec4<f32> = u_xlat1;
  let x_145 : vec4<f32> = x_33.x_PrevViewProjMatrix[3i];
  let x_147 : vec3<f32> = (vec3<f32>(x_142.x, x_142.y, x_142.z) + vec3<f32>(x_145.x, x_145.y, x_145.w));
  let x_148 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_153 : f32 = u_xlat1.z;
  u_xlat9 = (1.0f / x_153);
  let x_155 : f32 = u_xlat9;
  let x_157 : vec4<f32> = u_xlat1;
  let x_159 : vec2<f32> = (vec2<f32>(x_155, x_155) * vec2<f32>(x_157.x, x_157.y));
  let x_160 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_159.x, x_159.y, x_160.z, x_160.w);
  let x_164 : vec4<f32> = u_xlat0;
  let x_168 : vec4<f32> = x_33.x_NonJitteredViewProjMatrix[1i];
  u_xlat2 = (vec3<f32>(x_164.y, x_164.y, x_164.y) * vec3<f32>(x_168.x, x_168.y, x_168.w));
  let x_172 : vec4<f32> = x_33.x_NonJitteredViewProjMatrix[0i];
  let x_174 : vec4<f32> = u_xlat0;
  let x_177 : vec3<f32> = u_xlat2;
  let x_178 : vec3<f32> = ((vec3<f32>(x_172.x, x_172.y, x_172.w) * vec3<f32>(x_174.x, x_174.x, x_174.x)) + x_177);
  let x_179 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_178.x, x_178.y, x_179.z, x_178.z);
  let x_182 : vec4<f32> = x_33.x_NonJitteredViewProjMatrix[2i];
  let x_184 : vec4<f32> = u_xlat0;
  let x_187 : vec4<f32> = u_xlat0;
  let x_189 : vec3<f32> = ((vec3<f32>(x_182.x, x_182.y, x_182.w) * vec3<f32>(x_184.z, x_184.z, x_184.z)) + vec3<f32>(x_187.x, x_187.y, x_187.w));
  let x_190 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_192 : vec4<f32> = u_xlat0;
  let x_195 : vec4<f32> = x_33.x_NonJitteredViewProjMatrix[3i];
  let x_197 : vec3<f32> = (vec3<f32>(x_192.x, x_192.y, x_192.z) + vec3<f32>(x_195.x, x_195.y, x_195.w));
  let x_198 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
  let x_201 : f32 = u_xlat0.z;
  u_xlat6.x = (1.0f / x_201);
  let x_204 : vec4<f32> = u_xlat0;
  let x_206 : vec2<f32> = u_xlat6;
  let x_209 : vec4<f32> = u_xlat1;
  let x_212 : vec2<f32> = ((vec2<f32>(x_204.x, x_204.y) * vec2<f32>(x_206.x, x_206.x)) + -(vec2<f32>(x_209.x, x_209.y)));
  let x_213 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_212.x, x_212.y, x_213.z, x_213.w);
  let x_217 : vec4<f32> = u_xlat0;
  let x_222 : vec2<f32> = (vec2<f32>(x_217.x, x_217.y) * vec2<f32>(0.5f, -0.5f));
  let x_223 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_222.x, x_222.y, x_223.z, x_223.w);
  let x_227 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_227.x, x_227.y, vec2<f32>(0.0f, 0.0f).x, vec2<f32>(0.0f, 0.0f).y);
  return;
}

struct main_out {
  @builtin(frag_depth)
  gl_FragDepth_1 : f32,
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(gl_FragDepth, SV_Target0);
}

