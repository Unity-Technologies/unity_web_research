struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD7 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat9 : f32;
  var u_xlat2 : vec3<f32>;
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
  let x_50 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_52 : vec4<f32> = in_POSITION0;
  let x_55 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = ((vec3<f32>(x_50.x, x_50.y, x_50.z) * vec3<f32>(x_52.w, x_52.w, x_52.w)) + vec3<f32>(x_55.x, x_55.y, x_55.z));
  let x_58 : vec4<f32> = u_xlat1;
  let x_61 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_58.y, x_58.y, x_58.y, x_58.y) * x_61);
  let x_64 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_65 : vec4<f32> = u_xlat1;
  let x_68 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_64 * vec4<f32>(x_65.x, x_65.x, x_65.x, x_65.x)) + x_68);
  let x_71 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_72 : vec4<f32> = u_xlat1;
  let x_75 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_71 * vec4<f32>(x_72.z, x_72.z, x_72.z, x_72.z)) + x_75);
  let x_78 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_79 : vec4<f32> = u_xlat1;
  let x_82 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_78 * vec4<f32>(x_79.w, x_79.w, x_79.w, x_79.w)) + x_82);
  let x_90 : vec4<f32> = u_xlat0;
  gl_Position = x_90;
  let x_98 : f32 = u_xlat0.z;
  vs_TEXCOORD7 = x_98;
  let x_103 : vec4<f32> = in_TEXCOORD0;
  let x_107 : vec4<f32> = x_17.x_MainTex_ST;
  let x_111 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_103.x, x_103.y) * vec2<f32>(x_107.x, x_107.y)) + vec2<f32>(x_111.z, x_111.w));
  let x_116 : vec3<f32> = in_NORMAL0;
  let x_118 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat0.y = dot(x_116, vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_122 : vec3<f32> = in_NORMAL0;
  let x_124 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat0.z = dot(x_122, vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_128 : vec3<f32> = in_NORMAL0;
  let x_130 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat0.x = dot(x_128, vec3<f32>(x_130.x, x_130.y, x_130.z));
  let x_136 : vec4<f32> = u_xlat0;
  let x_138 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_136.x, x_136.y, x_136.z), vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_141 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_141);
  let x_143 : f32 = u_xlat9;
  let x_145 : vec4<f32> = u_xlat0;
  let x_147 : vec3<f32> = (vec3<f32>(x_143, x_143, x_143) * vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_148 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_151 : vec4<f32> = in_TANGENT0;
  let x_154 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  let x_156 : vec3<f32> = (vec3<f32>(x_151.y, x_151.y, x_151.y) * vec3<f32>(x_154.y, x_154.z, x_154.x));
  let x_157 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_160 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_162 : vec4<f32> = in_TANGENT0;
  let x_165 : vec4<f32> = u_xlat1;
  let x_167 : vec3<f32> = ((vec3<f32>(x_160.y, x_160.z, x_160.x) * vec3<f32>(x_162.x, x_162.x, x_162.x)) + vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_168 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_171 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_173 : vec4<f32> = in_TANGENT0;
  let x_176 : vec4<f32> = u_xlat1;
  let x_178 : vec3<f32> = ((vec3<f32>(x_171.y, x_171.z, x_171.x) * vec3<f32>(x_173.z, x_173.z, x_173.z)) + vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_179 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  let x_181 : vec4<f32> = u_xlat1;
  let x_183 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(vec3<f32>(x_181.x, x_181.y, x_181.z), vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_186 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_186);
  let x_188 : f32 = u_xlat9;
  let x_190 : vec4<f32> = u_xlat1;
  let x_192 : vec3<f32> = (vec3<f32>(x_188, x_188, x_188) * vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_193 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_197 : vec4<f32> = u_xlat0;
  let x_199 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_197.x, x_197.y, x_197.z) * vec3<f32>(x_199.x, x_199.y, x_199.z));
  let x_202 : vec4<f32> = u_xlat0;
  let x_204 : vec4<f32> = u_xlat1;
  let x_207 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_202.z, x_202.x, x_202.y) * vec3<f32>(x_204.y, x_204.z, x_204.x)) + -(x_207));
  let x_213 : f32 = in_TANGENT0.w;
  let x_216 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat9 = (x_213 * x_216);
  let x_218 : f32 = u_xlat9;
  let x_220 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_218, x_218, x_218) * x_220);
  let x_224 : f32 = u_xlat2.x;
  vs_TEXCOORD1.y = x_224;
  let x_227 : f32 = u_xlat1.z;
  vs_TEXCOORD1.x = x_227;
  let x_230 : f32 = u_xlat0.y;
  vs_TEXCOORD1.z = x_230;
  let x_234 : f32 = u_xlat1.x;
  vs_TEXCOORD2.x = x_234;
  let x_238 : f32 = u_xlat1.y;
  vs_TEXCOORD3.x = x_238;
  let x_241 : f32 = u_xlat0.z;
  vs_TEXCOORD2.z = x_241;
  let x_244 : f32 = u_xlat0.x;
  vs_TEXCOORD3.z = x_244;
  let x_247 : f32 = u_xlat2.y;
  vs_TEXCOORD2.y = x_247;
  let x_250 : f32 = u_xlat2.z;
  vs_TEXCOORD3.y = x_250;
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @location(5)
  vs_TEXCOORD4_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD7_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(vs_TEXCOORD4, gl_Position, vs_TEXCOORD7, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3);
}

