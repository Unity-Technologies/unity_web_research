struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD5 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
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
  let x_48 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_50 : vec4<f32> = in_POSITION0;
  let x_53 : vec4<f32> = u_xlat0;
  let x_55 : vec3<f32> = ((vec3<f32>(x_48.x, x_48.y, x_48.z) * vec3<f32>(x_50.w, x_50.w, x_50.w)) + vec3<f32>(x_53.x, x_53.y, x_53.z));
  let x_56 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_55.x, x_55.y, x_55.z, x_56.w);
  let x_59 : vec4<f32> = u_xlat1;
  let x_63 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_59.y, x_59.y, x_59.y, x_59.y) * x_63);
  let x_66 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_67 : vec4<f32> = u_xlat1;
  let x_70 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_66 * vec4<f32>(x_67.x, x_67.x, x_67.x, x_67.x)) + x_70);
  let x_73 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_74 : vec4<f32> = u_xlat1;
  let x_77 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_73 * vec4<f32>(x_74.z, x_74.z, x_74.z, x_74.z)) + x_77);
  let x_80 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_81 : vec4<f32> = u_xlat1;
  let x_84 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_80 * vec4<f32>(x_81.w, x_81.w, x_81.w, x_81.w)) + x_84);
  let x_92 : vec4<f32> = u_xlat1;
  gl_Position = x_92;
  let x_100 : f32 = u_xlat1.z;
  vs_TEXCOORD5 = x_100;
  let x_103 : vec4<f32> = u_xlat1;
  let x_104 : vec2<f32> = vec2<f32>(x_103.z, x_103.w);
  let x_105 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_105.x, x_105.y, x_104.x, x_104.y);
  let x_110 : vec4<f32> = in_TEXCOORD0;
  let x_114 : vec4<f32> = x_17.x_MainTex_ST;
  let x_118 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_110.x, x_110.y) * vec2<f32>(x_114.x, x_114.y)) + vec2<f32>(x_118.z, x_118.w));
  let x_124 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_124;
  let x_129 : vec3<f32> = in_NORMAL0;
  let x_131 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat2.y = dot(x_129, vec3<f32>(x_131.x, x_131.y, x_131.z));
  let x_135 : vec3<f32> = in_NORMAL0;
  let x_137 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat2.z = dot(x_135, vec3<f32>(x_137.x, x_137.y, x_137.z));
  let x_141 : vec3<f32> = in_NORMAL0;
  let x_143 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat2.x = dot(x_141, vec3<f32>(x_143.x, x_143.y, x_143.z));
  let x_147 : vec4<f32> = u_xlat2;
  let x_149 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_147.x, x_147.y, x_147.z), vec3<f32>(x_149.x, x_149.y, x_149.z));
  let x_154 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_154);
  let x_157 : vec4<f32> = u_xlat0;
  let x_159 : vec4<f32> = u_xlat2;
  let x_161 : vec3<f32> = (vec3<f32>(x_157.x, x_157.x, x_157.x) * vec3<f32>(x_159.x, x_159.y, x_159.z));
  let x_162 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_161.x, x_161.y, x_161.z, x_162.w);
  let x_167 : vec4<f32> = in_TANGENT0;
  let x_170 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_167.y, x_167.y, x_167.y) * vec3<f32>(x_170.y, x_170.z, x_170.x));
  let x_174 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_176 : vec4<f32> = in_TANGENT0;
  let x_179 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_174.y, x_174.z, x_174.x) * vec3<f32>(x_176.x, x_176.x, x_176.x)) + x_179);
  let x_182 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_184 : vec4<f32> = in_TANGENT0;
  let x_187 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_182.y, x_182.z, x_182.x) * vec3<f32>(x_184.z, x_184.z, x_184.z)) + x_187);
  let x_189 : vec3<f32> = u_xlat3;
  let x_190 : vec3<f32> = u_xlat3;
  u_xlat0.x = dot(x_189, x_190);
  let x_194 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_194);
  let x_197 : vec4<f32> = u_xlat0;
  let x_199 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_197.x, x_197.x, x_197.x) * x_199);
  let x_202 : vec4<f32> = u_xlat2;
  let x_204 : vec3<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_202.x, x_202.y, x_202.z) * x_204);
  let x_206 : vec4<f32> = u_xlat2;
  let x_208 : vec3<f32> = u_xlat3;
  let x_211 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_206.z, x_206.x, x_206.y) * vec3<f32>(x_208.y, x_208.z, x_208.x)) + -(x_211));
  let x_216 : f32 = in_TANGENT0.w;
  let x_219 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat0.x = (x_216 * x_219);
  let x_222 : vec4<f32> = u_xlat0;
  let x_224 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_222.x, x_222.x, x_222.x) * x_224);
  let x_227 : f32 = u_xlat4.x;
  vs_TEXCOORD1.y = x_227;
  let x_230 : f32 = u_xlat3.z;
  vs_TEXCOORD1.x = x_230;
  let x_233 : f32 = u_xlat2.y;
  vs_TEXCOORD1.z = x_233;
  let x_237 : f32 = u_xlat3.x;
  vs_TEXCOORD2.x = x_237;
  let x_241 : f32 = u_xlat3.y;
  vs_TEXCOORD3.x = x_241;
  let x_244 : f32 = u_xlat2.z;
  vs_TEXCOORD2.z = x_244;
  let x_247 : f32 = u_xlat2.x;
  vs_TEXCOORD3.z = x_247;
  let x_250 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_250;
  let x_253 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_253;
  let x_256 : f32 = u_xlat4.y;
  vs_TEXCOORD2.y = x_256;
  let x_259 : f32 = u_xlat4.z;
  vs_TEXCOORD3.y = x_259;
  let x_262 : f32 = u_xlat1.y;
  let x_264 : f32 = x_17.x_ProjectionParams.x;
  u_xlat0.x = (x_262 * x_264);
  let x_267 : vec4<f32> = u_xlat1;
  let x_271 : vec2<f32> = (vec2<f32>(x_267.x, x_267.w) * vec2<f32>(0.5f, 0.5f));
  let x_272 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_271.x, x_272.y, x_271.y, x_272.w);
  let x_275 : f32 = u_xlat0.x;
  u_xlat1.w = (x_275 * 0.5f);
  let x_278 : vec4<f32> = u_xlat1;
  let x_280 : vec4<f32> = u_xlat1;
  let x_282 : vec2<f32> = (vec2<f32>(x_278.z, x_278.z) + vec2<f32>(x_280.x, x_280.w));
  let x_283 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_282.x, x_282.y, x_283.z, x_283.w);
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD5_1 : f32,
  @location(5)
  vs_TEXCOORD6_1 : vec4<f32>,
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
  return main_out(gl_Position, vs_TEXCOORD5, vs_TEXCOORD6, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3);
}

