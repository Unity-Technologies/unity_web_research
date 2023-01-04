struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(7) var<uniform> x_17 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat7 : f32;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

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
  vs_TEXCOORD2 = ((vec3<f32>(x_50.x, x_50.y, x_50.z) * vec3<f32>(x_52.w, x_52.w, x_52.w)) + vec3<f32>(x_55.x, x_55.y, x_55.z));
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
  let x_97 : vec4<f32> = in_TEXCOORD0;
  let x_101 : vec4<f32> = x_17.x_MainTex_ST;
  let x_105 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_97.x, x_97.y) * vec2<f32>(x_101.x, x_101.y)) + vec2<f32>(x_105.z, x_105.w));
  let x_110 : vec3<f32> = in_NORMAL0;
  let x_112 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_110, vec3<f32>(x_112.x, x_112.y, x_112.z));
  let x_118 : vec3<f32> = in_NORMAL0;
  let x_120 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_118, vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_124 : vec3<f32> = in_NORMAL0;
  let x_126 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_124, vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_132 : vec4<f32> = u_xlat1;
  let x_134 : vec4<f32> = u_xlat1;
  u_xlat7 = dot(vec3<f32>(x_132.x, x_132.y, x_132.z), vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_137 : f32 = u_xlat7;
  u_xlat7 = inverseSqrt(x_137);
  let x_140 : f32 = u_xlat7;
  let x_142 : vec4<f32> = u_xlat1;
  vs_TEXCOORD1 = (vec3<f32>(x_140, x_140, x_140) * vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_146 : f32 = u_xlat0.y;
  let x_149 : f32 = x_17.x_ProjectionParams.x;
  u_xlat0.y = (x_146 * x_149);
  let x_152 : vec4<f32> = u_xlat0;
  let x_156 : vec3<f32> = (vec3<f32>(x_152.x, x_152.w, x_152.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_157 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_156.x, x_157.y, x_156.y, x_156.z);
  let x_160 : vec4<f32> = u_xlat0;
  let x_161 : vec2<f32> = vec2<f32>(x_160.z, x_160.w);
  let x_162 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_162.x, x_162.y, x_161.x, x_161.y);
  let x_164 : vec4<f32> = u_xlat1;
  let x_166 : vec4<f32> = u_xlat1;
  let x_168 : vec2<f32> = (vec2<f32>(x_164.z, x_164.z) + vec2<f32>(x_166.x, x_166.w));
  let x_169 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_168.x, x_168.y, x_169.z, x_169.w);
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @location(2)
  vs_TEXCOORD2_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD5_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD2, gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD5);
}
