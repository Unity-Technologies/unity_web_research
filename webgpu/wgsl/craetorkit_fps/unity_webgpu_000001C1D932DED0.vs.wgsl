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

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD7 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat8 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : f32;
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
  let x_99 : f32 = u_xlat0.z;
  vs_TEXCOORD7 = x_99;
  let x_102 : vec4<f32> = u_xlat0;
  let x_103 : vec2<f32> = vec2<f32>(x_102.z, x_102.w);
  let x_104 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_104.x, x_104.y, x_103.x, x_103.y);
  let x_109 : vec4<f32> = in_TEXCOORD0;
  let x_113 : vec4<f32> = x_17.x_MainTex_ST;
  let x_117 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_109.x, x_109.y) * vec2<f32>(x_113.x, x_113.y)) + vec2<f32>(x_117.z, x_117.w));
  let x_122 : vec3<f32> = in_NORMAL0;
  let x_124 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat1.y = dot(x_122, vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_128 : vec3<f32> = in_NORMAL0;
  let x_130 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat1.z = dot(x_128, vec3<f32>(x_130.x, x_130.y, x_130.z));
  let x_134 : vec3<f32> = in_NORMAL0;
  let x_136 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat1.x = dot(x_134, vec3<f32>(x_136.x, x_136.y, x_136.z));
  let x_142 : vec4<f32> = u_xlat1;
  let x_144 : vec4<f32> = u_xlat1;
  u_xlat8 = dot(vec3<f32>(x_142.x, x_142.y, x_142.z), vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_147 : f32 = u_xlat8;
  u_xlat8 = inverseSqrt(x_147);
  let x_149 : f32 = u_xlat8;
  let x_151 : vec4<f32> = u_xlat1;
  let x_153 : vec3<f32> = (vec3<f32>(x_149, x_149, x_149) * vec3<f32>(x_151.x, x_151.y, x_151.z));
  let x_154 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_159 : vec4<f32> = in_TANGENT0;
  let x_162 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat2 = (vec3<f32>(x_159.y, x_159.y, x_159.y) * vec3<f32>(x_162.y, x_162.z, x_162.x));
  let x_166 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_168 : vec4<f32> = in_TANGENT0;
  let x_171 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_166.y, x_166.z, x_166.x) * vec3<f32>(x_168.x, x_168.x, x_168.x)) + x_171);
  let x_174 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_176 : vec4<f32> = in_TANGENT0;
  let x_179 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_174.y, x_174.z, x_174.x) * vec3<f32>(x_176.z, x_176.z, x_176.z)) + x_179);
  let x_181 : vec3<f32> = u_xlat2;
  let x_182 : vec3<f32> = u_xlat2;
  u_xlat8 = dot(x_181, x_182);
  let x_184 : f32 = u_xlat8;
  u_xlat8 = inverseSqrt(x_184);
  let x_186 : f32 = u_xlat8;
  let x_188 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_186, x_186, x_186) * x_188);
  let x_191 : vec4<f32> = u_xlat1;
  let x_193 : vec3<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_191.x, x_191.y, x_191.z) * x_193);
  let x_195 : vec4<f32> = u_xlat1;
  let x_197 : vec3<f32> = u_xlat2;
  let x_200 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_195.z, x_195.x, x_195.y) * vec3<f32>(x_197.y, x_197.z, x_197.x)) + -(x_200));
  let x_206 : f32 = in_TANGENT0.w;
  let x_209 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat8 = (x_206 * x_209);
  let x_211 : f32 = u_xlat8;
  let x_213 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_211, x_211, x_211) * x_213);
  let x_217 : f32 = u_xlat3.x;
  vs_TEXCOORD1.y = x_217;
  let x_220 : f32 = u_xlat2.z;
  vs_TEXCOORD1.x = x_220;
  let x_223 : f32 = u_xlat1.y;
  vs_TEXCOORD1.z = x_223;
  let x_227 : f32 = u_xlat2.x;
  vs_TEXCOORD2.x = x_227;
  let x_231 : f32 = u_xlat2.y;
  vs_TEXCOORD3.x = x_231;
  let x_234 : f32 = u_xlat1.z;
  vs_TEXCOORD2.z = x_234;
  let x_237 : f32 = u_xlat1.x;
  vs_TEXCOORD3.z = x_237;
  let x_240 : f32 = u_xlat3.y;
  vs_TEXCOORD2.y = x_240;
  let x_243 : f32 = u_xlat3.z;
  vs_TEXCOORD3.y = x_243;
  let x_247 : f32 = u_xlat0.y;
  let x_249 : f32 = x_17.x_ProjectionParams.x;
  u_xlat4 = (x_247 * x_249);
  let x_251 : vec4<f32> = u_xlat0;
  let x_255 : vec2<f32> = (vec2<f32>(x_251.x, x_251.w) * vec2<f32>(0.5f, 0.5f));
  let x_256 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_255.x, x_256.y, x_255.y, x_256.w);
  let x_258 : f32 = u_xlat4;
  u_xlat0.w = (x_258 * 0.5f);
  let x_261 : vec4<f32> = u_xlat0;
  let x_263 : vec4<f32> = u_xlat0;
  let x_265 : vec2<f32> = (vec2<f32>(x_261.z, x_261.z) + vec2<f32>(x_263.x, x_263.w));
  let x_266 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_265.x, x_265.y, x_266.z, x_266.w);
  return;
}

struct main_out {
  @location(5)
  vs_TEXCOORD4_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD7_1 : f32,
  @location(6)
  vs_TEXCOORD6_1 : vec4<f32>,
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
  return main_out(vs_TEXCOORD4, gl_Position, vs_TEXCOORD7, vs_TEXCOORD6, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3);
}

