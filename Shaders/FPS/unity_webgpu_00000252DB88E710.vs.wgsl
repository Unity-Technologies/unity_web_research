struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(14) var<uniform> x_17 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_23);
  let x_26 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_27 : vec4<f32> = in_POSITION0;
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_26 * vec4<f32>(x_27.x, x_27.x, x_27.x, x_27.x)) + x_30);
  let x_34 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_35 : vec4<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_34 * vec4<f32>(x_35.z, x_35.z, x_35.z, x_35.z)) + x_38);
  let x_41 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat1 = (x_41 + x_44);
  let x_48 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_50 : vec4<f32> = in_POSITION0;
  let x_53 : vec4<f32> = u_xlat0;
  let x_55 : vec3<f32> = ((vec3<f32>(x_48.x, x_48.y, x_48.z) * vec3<f32>(x_50.w, x_50.w, x_50.w)) + vec3<f32>(x_53.x, x_53.y, x_53.z));
  let x_56 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_55.x, x_55.y, x_55.z, x_56.w);
  let x_59 : vec4<f32> = u_xlat1;
  let x_62 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_59.y, x_59.y, x_59.y, x_59.y) * x_62);
  let x_65 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_66 : vec4<f32> = u_xlat1;
  let x_69 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_65 * vec4<f32>(x_66.x, x_66.x, x_66.x, x_66.x)) + x_69);
  let x_72 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_73 : vec4<f32> = u_xlat1;
  let x_76 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_72 * vec4<f32>(x_73.z, x_73.z, x_73.z, x_73.z)) + x_76);
  let x_85 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_86 : vec4<f32> = u_xlat1;
  let x_89 : vec4<f32> = u_xlat2;
  gl_Position = ((x_85 * vec4<f32>(x_86.w, x_86.w, x_86.w, x_86.w)) + x_89);
  let x_97 : vec4<f32> = in_TEXCOORD0;
  let x_101 : vec4<f32> = x_17.x_MainTex_ST;
  let x_105 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_97.x, x_97.y) * vec2<f32>(x_101.x, x_101.y)) + vec2<f32>(x_105.z, x_105.w));
  let x_112 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_112;
  let x_118 : vec3<f32> = in_NORMAL0;
  let x_120 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat1.y = dot(x_118, vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_124 : vec3<f32> = in_NORMAL0;
  let x_126 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat1.z = dot(x_124, vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_131 : vec3<f32> = in_NORMAL0;
  let x_133 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat1.x = dot(x_131, vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_137 : vec4<f32> = u_xlat1;
  let x_139 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_137.x, x_137.y, x_137.z), vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_144 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_144);
  let x_147 : vec4<f32> = u_xlat0;
  let x_149 : vec4<f32> = u_xlat1;
  let x_151 : vec3<f32> = (vec3<f32>(x_147.x, x_147.x, x_147.x) * vec3<f32>(x_149.x, x_149.y, x_149.z));
  let x_152 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
  let x_155 : vec4<f32> = in_TANGENT0;
  let x_158 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  let x_160 : vec3<f32> = (vec3<f32>(x_155.y, x_155.y, x_155.y) * vec3<f32>(x_158.y, x_158.z, x_158.x));
  let x_161 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_164 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_166 : vec4<f32> = in_TANGENT0;
  let x_169 : vec4<f32> = u_xlat2;
  let x_171 : vec3<f32> = ((vec3<f32>(x_164.y, x_164.z, x_164.x) * vec3<f32>(x_166.x, x_166.x, x_166.x)) + vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_172 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_175 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_177 : vec4<f32> = in_TANGENT0;
  let x_180 : vec4<f32> = u_xlat2;
  let x_182 : vec3<f32> = ((vec3<f32>(x_175.y, x_175.z, x_175.x) * vec3<f32>(x_177.z, x_177.z, x_177.z)) + vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_183 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_185 : vec4<f32> = u_xlat2;
  let x_187 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_185.x, x_185.y, x_185.z), vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_192 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_192);
  let x_195 : vec4<f32> = u_xlat0;
  let x_197 : vec4<f32> = u_xlat2;
  let x_199 : vec3<f32> = (vec3<f32>(x_195.x, x_195.x, x_195.x) * vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_200 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  let x_204 : vec4<f32> = u_xlat1;
  let x_206 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_204.x, x_204.y, x_204.z) * vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_209 : vec4<f32> = u_xlat1;
  let x_211 : vec4<f32> = u_xlat2;
  let x_214 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_209.z, x_209.x, x_209.y) * vec3<f32>(x_211.y, x_211.z, x_211.x)) + -(x_214));
  let x_219 : f32 = in_TANGENT0.w;
  let x_222 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat0.x = (x_219 * x_222);
  let x_225 : vec4<f32> = u_xlat0;
  let x_227 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_225.x, x_225.x, x_225.x) * x_227);
  let x_230 : f32 = u_xlat3.x;
  vs_TEXCOORD1.y = x_230;
  let x_233 : f32 = u_xlat2.z;
  vs_TEXCOORD1.x = x_233;
  let x_236 : f32 = u_xlat1.y;
  vs_TEXCOORD1.z = x_236;
  let x_240 : f32 = u_xlat2.x;
  vs_TEXCOORD2.x = x_240;
  let x_244 : f32 = u_xlat2.y;
  vs_TEXCOORD3.x = x_244;
  let x_247 : f32 = u_xlat1.z;
  vs_TEXCOORD2.z = x_247;
  let x_250 : f32 = u_xlat1.x;
  vs_TEXCOORD3.z = x_250;
  let x_253 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_253;
  let x_256 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_256;
  let x_259 : f32 = u_xlat3.y;
  vs_TEXCOORD2.y = x_259;
  let x_262 : f32 = u_xlat3.z;
  vs_TEXCOORD3.y = x_262;
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3);
}

