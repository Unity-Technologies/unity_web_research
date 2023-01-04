struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(13) var<uniform> x_17 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat13 : f32;

var<private> u_xlat2 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_22 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_22);
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
  let x_62 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_58.y, x_58.y, x_58.y, x_58.y) * x_62);
  let x_65 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_66 : vec4<f32> = u_xlat1;
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_65 * vec4<f32>(x_66.x, x_66.x, x_66.x, x_66.x)) + x_69);
  let x_72 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_73 : vec4<f32> = u_xlat1;
  let x_76 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_72 * vec4<f32>(x_73.z, x_73.z, x_73.z, x_73.z)) + x_76);
  let x_79 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_80 : vec4<f32> = u_xlat1;
  let x_83 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_79 * vec4<f32>(x_80.w, x_80.w, x_80.w, x_80.w)) + x_83);
  let x_91 : vec4<f32> = u_xlat0;
  gl_Position = x_91;
  let x_98 : vec4<f32> = in_TEXCOORD0;
  let x_102 : vec4<f32> = x_17.x_MainTex_ST;
  let x_106 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_98.x, x_98.y) * vec2<f32>(x_102.x, x_102.y)) + vec2<f32>(x_106.z, x_106.w));
  let x_111 : vec3<f32> = in_NORMAL0;
  let x_113 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat1.y = dot(x_111, vec3<f32>(x_113.x, x_113.y, x_113.z));
  let x_118 : vec3<f32> = in_NORMAL0;
  let x_120 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat1.z = dot(x_118, vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_125 : vec3<f32> = in_NORMAL0;
  let x_127 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat1.x = dot(x_125, vec3<f32>(x_127.x, x_127.y, x_127.z));
  let x_133 : vec4<f32> = u_xlat1;
  let x_135 : vec4<f32> = u_xlat1;
  u_xlat13 = dot(vec3<f32>(x_133.x, x_133.y, x_133.z), vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_138 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_138);
  let x_140 : f32 = u_xlat13;
  let x_142 : vec4<f32> = u_xlat1;
  let x_144 : vec3<f32> = (vec3<f32>(x_140, x_140, x_140) * vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_145 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
  let x_150 : vec4<f32> = in_TANGENT0;
  let x_153 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat2 = (vec3<f32>(x_150.y, x_150.y, x_150.y) * vec3<f32>(x_153.y, x_153.z, x_153.x));
  let x_157 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_159 : vec4<f32> = in_TANGENT0;
  let x_162 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_157.y, x_157.z, x_157.x) * vec3<f32>(x_159.x, x_159.x, x_159.x)) + x_162);
  let x_165 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_167 : vec4<f32> = in_TANGENT0;
  let x_170 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_165.y, x_165.z, x_165.x) * vec3<f32>(x_167.z, x_167.z, x_167.z)) + x_170);
  let x_172 : vec3<f32> = u_xlat2;
  let x_173 : vec3<f32> = u_xlat2;
  u_xlat13 = dot(x_172, x_173);
  let x_175 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_175);
  let x_177 : f32 = u_xlat13;
  let x_179 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_177, x_177, x_177) * x_179);
  let x_182 : vec4<f32> = u_xlat1;
  let x_184 : vec3<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_182.x, x_182.y, x_182.z) * x_184);
  let x_186 : vec4<f32> = u_xlat1;
  let x_188 : vec3<f32> = u_xlat2;
  let x_191 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_186.z, x_186.x, x_186.y) * vec3<f32>(x_188.y, x_188.z, x_188.x)) + -(x_191));
  let x_197 : f32 = in_TANGENT0.w;
  let x_200 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat13 = (x_197 * x_200);
  let x_202 : f32 = u_xlat13;
  let x_204 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_202, x_202, x_202) * x_204);
  let x_208 : f32 = u_xlat3.x;
  vs_TEXCOORD1.y = x_208;
  let x_212 : f32 = u_xlat2.z;
  vs_TEXCOORD1.x = x_212;
  let x_215 : f32 = u_xlat1.y;
  vs_TEXCOORD1.z = x_215;
  let x_219 : f32 = u_xlat2.x;
  vs_TEXCOORD2.x = x_219;
  let x_223 : f32 = u_xlat2.y;
  vs_TEXCOORD3.x = x_223;
  let x_226 : f32 = u_xlat1.z;
  vs_TEXCOORD2.z = x_226;
  let x_229 : f32 = u_xlat1.x;
  vs_TEXCOORD3.z = x_229;
  let x_232 : f32 = u_xlat3.y;
  vs_TEXCOORD2.y = x_232;
  let x_235 : f32 = u_xlat3.z;
  vs_TEXCOORD3.y = x_235;
  let x_238 : f32 = u_xlat0.y;
  let x_240 : f32 = x_17.x_ProjectionParams.x;
  u_xlat0.y = (x_238 * x_240);
  let x_243 : vec4<f32> = u_xlat0;
  let x_247 : vec3<f32> = (vec3<f32>(x_243.x, x_243.w, x_243.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_248 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_247.x, x_248.y, x_247.y, x_247.z);
  let x_251 : vec4<f32> = u_xlat0;
  let x_252 : vec2<f32> = vec2<f32>(x_251.z, x_251.w);
  let x_253 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_253.x, x_253.y, x_252.x, x_252.y);
  let x_255 : vec4<f32> = u_xlat1;
  let x_257 : vec4<f32> = u_xlat1;
  let x_259 : vec2<f32> = (vec2<f32>(x_255.z, x_255.z) + vec2<f32>(x_257.x, x_257.w));
  let x_260 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_259.x, x_259.y, x_260.z, x_260.w);
  return;
}

struct main_out {
  @location(4)
  vs_TEXCOORD4_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(5)
  vs_TEXCOORD6_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(vs_TEXCOORD4, gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD6);
}

