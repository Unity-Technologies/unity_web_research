struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD5 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
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
  let x_79 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_80 : vec4<f32> = u_xlat1;
  let x_83 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_79 * vec4<f32>(x_80.w, x_80.w, x_80.w, x_80.w)) + x_83);
  let x_91 : vec4<f32> = u_xlat1;
  gl_Position = x_91;
  let x_99 : f32 = u_xlat1.z;
  vs_TEXCOORD5 = x_99;
  let x_104 : vec4<f32> = in_TEXCOORD0;
  let x_108 : vec4<f32> = x_17.x_MainTex_ST;
  let x_112 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_104.x, x_104.y) * vec2<f32>(x_108.x, x_108.y)) + vec2<f32>(x_112.z, x_112.w));
  let x_118 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_118;
  let x_123 : vec3<f32> = in_NORMAL0;
  let x_125 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat1.y = dot(x_123, vec3<f32>(x_125.x, x_125.y, x_125.z));
  let x_129 : vec3<f32> = in_NORMAL0;
  let x_131 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat1.z = dot(x_129, vec3<f32>(x_131.x, x_131.y, x_131.z));
  let x_135 : vec3<f32> = in_NORMAL0;
  let x_137 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat1.x = dot(x_135, vec3<f32>(x_137.x, x_137.y, x_137.z));
  let x_141 : vec4<f32> = u_xlat1;
  let x_143 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_141.x, x_141.y, x_141.z), vec3<f32>(x_143.x, x_143.y, x_143.z));
  let x_148 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_148);
  let x_151 : vec4<f32> = u_xlat0;
  let x_153 : vec4<f32> = u_xlat1;
  let x_155 : vec3<f32> = (vec3<f32>(x_151.x, x_151.x, x_151.x) * vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_156 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_159 : vec4<f32> = in_TANGENT0;
  let x_162 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  let x_164 : vec3<f32> = (vec3<f32>(x_159.y, x_159.y, x_159.y) * vec3<f32>(x_162.y, x_162.z, x_162.x));
  let x_165 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
  let x_168 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_170 : vec4<f32> = in_TANGENT0;
  let x_173 : vec4<f32> = u_xlat2;
  let x_175 : vec3<f32> = ((vec3<f32>(x_168.y, x_168.z, x_168.x) * vec3<f32>(x_170.x, x_170.x, x_170.x)) + vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_176 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
  let x_179 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_181 : vec4<f32> = in_TANGENT0;
  let x_184 : vec4<f32> = u_xlat2;
  let x_186 : vec3<f32> = ((vec3<f32>(x_179.y, x_179.z, x_179.x) * vec3<f32>(x_181.z, x_181.z, x_181.z)) + vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_187 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_189 : vec4<f32> = u_xlat2;
  let x_191 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_189.x, x_189.y, x_189.z), vec3<f32>(x_191.x, x_191.y, x_191.z));
  let x_196 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_196);
  let x_199 : vec4<f32> = u_xlat0;
  let x_201 : vec4<f32> = u_xlat2;
  let x_203 : vec3<f32> = (vec3<f32>(x_199.x, x_199.x, x_199.x) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_208 : vec4<f32> = u_xlat1;
  let x_210 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_208.x, x_208.y, x_208.z) * vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_213 : vec4<f32> = u_xlat1;
  let x_215 : vec4<f32> = u_xlat2;
  let x_218 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_213.z, x_213.x, x_213.y) * vec3<f32>(x_215.y, x_215.z, x_215.x)) + -(x_218));
  let x_223 : f32 = in_TANGENT0.w;
  let x_226 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat0.x = (x_223 * x_226);
  let x_229 : vec4<f32> = u_xlat0;
  let x_231 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_229.x, x_229.x, x_229.x) * x_231);
  let x_234 : f32 = u_xlat3.x;
  vs_TEXCOORD1.y = x_234;
  let x_237 : f32 = u_xlat2.z;
  vs_TEXCOORD1.x = x_237;
  let x_240 : f32 = u_xlat1.y;
  vs_TEXCOORD1.z = x_240;
  let x_244 : f32 = u_xlat2.x;
  vs_TEXCOORD2.x = x_244;
  let x_248 : f32 = u_xlat2.y;
  vs_TEXCOORD3.x = x_248;
  let x_251 : f32 = u_xlat1.z;
  vs_TEXCOORD2.z = x_251;
  let x_254 : f32 = u_xlat1.x;
  vs_TEXCOORD3.z = x_254;
  let x_257 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_257;
  let x_260 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_260;
  let x_263 : f32 = u_xlat3.y;
  vs_TEXCOORD2.y = x_263;
  let x_266 : f32 = u_xlat3.z;
  vs_TEXCOORD3.y = x_266;
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD5_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD5, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3);
}

