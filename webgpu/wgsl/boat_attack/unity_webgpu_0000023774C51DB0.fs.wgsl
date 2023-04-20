diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_Intensity : f32,
  /* @offset(16) */
  x_SourceSize : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_MotionVectorTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_LinearClamp : sampler;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_PointClamp : sampler;

var<private> u_xlat3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_14 : vec4<f32> = vs_TEXCOORD0;
  let x_23 : vec4<f32> = x_18.x_SourceSize;
  let x_25 : vec2<f32> = (vec2<f32>(x_14.x, x_14.y) * vec2<f32>(x_23.x, x_23.y));
  let x_26 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_25.x, x_25.y, x_26.z);
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_28.x, x_28.y), vec2<f32>(0.0671105608344078064f, 0.00583714991807937622f));
  let x_39 : f32 = u_xlat0.x;
  u_xlat0.x = fract(x_39);
  let x_43 : f32 = u_xlat0.x;
  u_xlat0.x = (x_43 * 52.98291778564453125f);
  let x_48 : f32 = u_xlat0.x;
  u_xlat0.x = fract(x_48);
  let x_53 : f32 = u_xlat0.x;
  u_xlat4.x = (x_53 * 0.25f);
  let x_57 : vec3<f32> = u_xlat0;
  let x_62 : vec2<f32> = (vec2<f32>(x_57.x, x_57.x) + vec2<f32>(-0.5f, 1.0f));
  let x_63 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_62.x, x_63.y, x_62.y);
  let x_77 : vec4<f32> = vs_TEXCOORD0;
  let x_82 : f32 = x_18.x_GlobalMipBias.x;
  let x_83 : vec4<f32> = textureSampleBias(x_MotionVectorTexture, sampler_LinearClamp, vec2<f32>(x_77.x, x_77.y), x_82);
  let x_84 : vec2<f32> = vec2<f32>(x_83.x, x_83.y);
  let x_85 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_84.x, x_84.y, x_85.z, x_85.w);
  let x_87 : vec4<f32> = u_xlat1;
  let x_92 : f32 = x_18.x_Intensity;
  let x_94 : vec2<f32> = (-(vec2<f32>(x_87.x, x_87.y)) * vec2<f32>(x_92, x_92));
  let x_95 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_94.x, x_94.y, x_95.z, x_95.w);
  let x_97 : vec4<f32> = u_xlat1;
  let x_99 : vec4<f32> = u_xlat1;
  let x_101 : vec2<f32> = (vec2<f32>(x_97.x, x_97.y) + vec2<f32>(x_99.x, x_99.y));
  let x_102 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_101.x, x_101.y, x_102.z, x_102.w);
  let x_104 : vec3<f32> = u_xlat4;
  let x_106 : vec4<f32> = u_xlat1;
  let x_109 : vec4<f32> = vs_TEXCOORD0;
  let x_111 : vec2<f32> = ((vec2<f32>(x_104.x, x_104.x) * vec2<f32>(x_106.x, x_106.y)) + vec2<f32>(x_109.x, x_109.y));
  let x_112 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_111.x, x_112.y, x_111.y);
  let x_120 : vec3<f32> = u_xlat4;
  let x_123 : f32 = x_18.x_GlobalMipBias.x;
  let x_124 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_120.x, x_120.z), x_123);
  u_xlat2 = vec3<f32>(x_124.x, x_124.y, x_124.z);
  let x_127 : vec3<f32> = u_xlat0;
  u_xlat3 = (-(vec4<f32>(x_127.x, x_127.x, x_127.x, x_127.x)) + vec4<f32>(0.5f, 0.5f, 1.5f, 1.5f));
  let x_136 : f32 = u_xlat0.z;
  u_xlat0.x = (x_136 * 0.25f);
  let x_139 : vec3<f32> = u_xlat0;
  let x_141 : vec4<f32> = u_xlat1;
  let x_144 : vec4<f32> = vs_TEXCOORD0;
  let x_146 : vec2<f32> = ((vec2<f32>(x_139.x, x_139.x) * vec2<f32>(x_141.x, x_141.y)) + vec2<f32>(x_144.x, x_144.y));
  let x_147 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_146.x, x_146.y, x_147.z);
  let x_152 : vec3<f32> = u_xlat0;
  let x_155 : f32 = x_18.x_GlobalMipBias.x;
  let x_156 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_152.x, x_152.y), x_155);
  u_xlat0 = vec3<f32>(x_156.x, x_156.y, x_156.z);
  let x_158 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_158 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
  let x_161 : vec4<f32> = u_xlat3;
  let x_163 : vec4<f32> = u_xlat1;
  let x_166 : vec4<f32> = vs_TEXCOORD0;
  u_xlat1 = ((-(x_161) * vec4<f32>(x_163.x, x_163.y, x_163.x, x_163.y)) + vec4<f32>(x_166.x, x_166.y, x_166.x, x_166.y));
  let x_172 : vec4<f32> = u_xlat1;
  let x_175 : f32 = x_18.x_GlobalMipBias.x;
  let x_176 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_172.x, x_172.y), x_175);
  let x_177 : vec3<f32> = vec3<f32>(x_176.x, x_176.y, x_176.z);
  let x_178 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_183 : vec4<f32> = u_xlat1;
  let x_186 : f32 = x_18.x_GlobalMipBias.x;
  let x_187 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_183.z, x_183.w), x_186);
  let x_188 : vec3<f32> = vec3<f32>(x_187.x, x_187.y, x_187.z);
  let x_189 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  let x_191 : vec3<f32> = u_xlat2;
  let x_192 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_191 + vec3<f32>(x_192.x, x_192.y, x_192.z));
  let x_195 : vec4<f32> = u_xlat1;
  let x_197 : vec3<f32> = u_xlat2;
  let x_198 : vec3<f32> = (vec3<f32>(x_195.x, x_195.y, x_195.z) + x_197);
  let x_199 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_201 : vec3<f32> = u_xlat0;
  let x_202 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_201 + vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_207 : vec3<f32> = u_xlat0;
  let x_209 : vec3<f32> = (x_207 * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_210 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


