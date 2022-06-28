struct VGlobals {
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(3) var<uniform> x_17 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat12 : f32;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_23);
  let x_27 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_28 : vec4<f32> = in_POSITION0;
  let x_31 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_27 * vec4<f32>(x_28.x, x_28.x, x_28.x, x_28.x)) + x_31);
  let x_35 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_36 : vec4<f32> = in_POSITION0;
  let x_39 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_35 * vec4<f32>(x_36.z, x_36.z, x_36.z, x_36.z)) + x_39);
  let x_42 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat1 = (x_42 + x_45);
  let x_51 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_53 : vec4<f32> = in_POSITION0;
  let x_56 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = ((vec3<f32>(x_51.x, x_51.y, x_51.z) * vec3<f32>(x_53.w, x_53.w, x_53.w)) + vec3<f32>(x_56.x, x_56.y, x_56.z));
  let x_59 : vec4<f32> = u_xlat1;
  let x_63 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_59.y, x_59.y, x_59.y, x_59.y) * x_63);
  let x_66 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_67 : vec4<f32> = u_xlat1;
  let x_70 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_66 * vec4<f32>(x_67.x, x_67.x, x_67.x, x_67.x)) + x_70);
  let x_73 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_74 : vec4<f32> = u_xlat1;
  let x_77 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_73 * vec4<f32>(x_74.z, x_74.z, x_74.z, x_74.z)) + x_77);
  let x_86 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_87 : vec4<f32> = u_xlat1;
  let x_90 : vec4<f32> = u_xlat0;
  gl_Position = ((x_86 * vec4<f32>(x_87.w, x_87.w, x_87.w, x_87.w)) + x_90);
  let x_98 : vec4<f32> = in_TEXCOORD0;
  let x_102 : vec4<f32> = x_17.x_MainTex_ST;
  let x_106 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_98.x, x_98.y) * vec2<f32>(x_102.x, x_102.y)) + vec2<f32>(x_106.z, x_106.w));
  let x_111 : vec3<f32> = in_NORMAL0;
  let x_114 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_111, vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_120 : vec3<f32> = in_NORMAL0;
  let x_122 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_120, vec3<f32>(x_122.x, x_122.y, x_122.z));
  let x_126 : vec3<f32> = in_NORMAL0;
  let x_128 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_126, vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_134 : vec4<f32> = u_xlat0;
  let x_136 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_134.x, x_134.y, x_134.z), vec3<f32>(x_136.x, x_136.y, x_136.z));
  let x_139 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_139);
  let x_141 : f32 = u_xlat12;
  let x_143 : vec4<f32> = u_xlat0;
  let x_145 : vec3<f32> = (vec3<f32>(x_141, x_141, x_141) * vec3<f32>(x_143.x, x_143.y, x_143.z));
  let x_146 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  let x_150 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = vec3<f32>(x_150.x, x_150.y, x_150.z);
  vs_TEXCOORD3 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_156 : f32 = u_xlat0.y;
  let x_158 : f32 = u_xlat0.y;
  u_xlat1.x = (x_156 * x_158);
  let x_162 : f32 = u_xlat0.x;
  let x_164 : f32 = u_xlat0.x;
  let x_167 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_162 * x_164) + -(x_167));
  let x_172 : vec4<f32> = u_xlat0;
  let x_174 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec4<f32>(x_172.y, x_172.z, x_172.z, x_172.x) * vec4<f32>(x_174.x, x_174.y, x_174.z, x_174.z));
  let x_179 : vec4<f32> = x_17.unity_SHBr;
  let x_180 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_179, x_180);
  let x_185 : vec4<f32> = x_17.unity_SHBg;
  let x_186 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_185, x_186);
  let x_191 : vec4<f32> = x_17.unity_SHBb;
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_191, x_192);
  let x_197 : vec4<f32> = x_17.unity_SHC;
  let x_199 : vec4<f32> = u_xlat1;
  let x_202 : vec3<f32> = u_xlat3;
  let x_203 : vec3<f32> = ((vec3<f32>(x_197.x, x_197.y, x_197.z) * vec3<f32>(x_199.x, x_199.x, x_199.x)) + x_202);
  let x_204 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  u_xlat0.w = 1.0f;
  let x_210 : vec4<f32> = x_17.unity_SHAr;
  let x_211 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(x_210, x_211);
  let x_215 : vec4<f32> = x_17.unity_SHAg;
  let x_216 : vec4<f32> = u_xlat0;
  u_xlat2.y = dot(x_215, x_216);
  let x_220 : vec4<f32> = x_17.unity_SHAb;
  let x_221 : vec4<f32> = u_xlat0;
  u_xlat2.z = dot(x_220, x_221);
  let x_224 : vec4<f32> = u_xlat1;
  let x_226 : vec4<f32> = u_xlat2;
  let x_228 : vec3<f32> = (vec3<f32>(x_224.x, x_224.y, x_224.z) + vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_229 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_232 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = max(vec3<f32>(x_232.x, x_232.y, x_232.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD4_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD4);
}

