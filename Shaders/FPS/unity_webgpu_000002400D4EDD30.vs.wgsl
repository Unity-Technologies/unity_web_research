struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(8) var<uniform> x_30 : VGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat7 : f32;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = in_NORMAL0;
  let x_19 : vec4<f32> = in_POSITION0;
  let x_21 : vec3<f32> = ((x_13 * vec3<f32>(0.01f, 0.01f, 0.01f)) + vec3<f32>(x_19.x, x_19.y, x_19.z));
  let x_22 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_21.x, x_21.y, x_21.z, x_22.w);
  let x_25 : vec4<f32> = u_xlat0;
  let x_35 : vec4<f32> = x_30.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_25.y, x_25.y, x_25.y, x_25.y) * x_35);
  let x_39 : vec4<f32> = x_30.unity_ObjectToWorld[0i];
  let x_40 : vec4<f32> = u_xlat0;
  let x_43 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_39 * vec4<f32>(x_40.x, x_40.x, x_40.x, x_40.x)) + x_43);
  let x_47 : vec4<f32> = x_30.unity_ObjectToWorld[2i];
  let x_48 : vec4<f32> = u_xlat0;
  let x_51 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_47 * vec4<f32>(x_48.z, x_48.z, x_48.z, x_48.z)) + x_51);
  let x_53 : vec4<f32> = u_xlat0;
  let x_56 : vec4<f32> = x_30.unity_ObjectToWorld[3i];
  u_xlat1 = (x_53 + x_56);
  let x_61 : vec4<f32> = x_30.unity_ObjectToWorld[3i];
  let x_63 : vec4<f32> = in_POSITION0;
  let x_66 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = ((vec3<f32>(x_61.x, x_61.y, x_61.z) * vec3<f32>(x_63.w, x_63.w, x_63.w)) + vec3<f32>(x_66.x, x_66.y, x_66.z));
  let x_69 : vec4<f32> = u_xlat1;
  let x_72 : vec4<f32> = x_30.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_69.y, x_69.y, x_69.y, x_69.y) * x_72);
  let x_75 : vec4<f32> = x_30.unity_MatrixVP[0i];
  let x_76 : vec4<f32> = u_xlat1;
  let x_79 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_75 * vec4<f32>(x_76.x, x_76.x, x_76.x, x_76.x)) + x_79);
  let x_82 : vec4<f32> = x_30.unity_MatrixVP[2i];
  let x_83 : vec4<f32> = u_xlat1;
  let x_86 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_82 * vec4<f32>(x_83.z, x_83.z, x_83.z, x_83.z)) + x_86);
  let x_89 : vec4<f32> = x_30.unity_MatrixVP[3i];
  let x_90 : vec4<f32> = u_xlat1;
  let x_93 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_89 * vec4<f32>(x_90.w, x_90.w, x_90.w, x_90.w)) + x_93);
  let x_101 : vec4<f32> = u_xlat0;
  gl_Position = x_101;
  let x_104 : vec3<f32> = in_NORMAL0;
  let x_106 : vec4<f32> = x_30.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_104, vec3<f32>(x_106.x, x_106.y, x_106.z));
  let x_112 : vec3<f32> = in_NORMAL0;
  let x_114 : vec4<f32> = x_30.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_112, vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_118 : vec3<f32> = in_NORMAL0;
  let x_120 : vec4<f32> = x_30.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_118, vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_126 : vec4<f32> = u_xlat1;
  let x_128 : vec4<f32> = u_xlat1;
  u_xlat7 = dot(vec3<f32>(x_126.x, x_126.y, x_126.z), vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_131 : f32 = u_xlat7;
  u_xlat7 = inverseSqrt(x_131);
  let x_134 : f32 = u_xlat7;
  let x_136 : vec4<f32> = u_xlat1;
  vs_TEXCOORD0 = (vec3<f32>(x_134, x_134, x_134) * vec3<f32>(x_136.x, x_136.y, x_136.z));
  let x_140 : f32 = u_xlat0.y;
  let x_143 : f32 = x_30.x_ProjectionParams.x;
  u_xlat0.y = (x_140 * x_143);
  let x_146 : vec4<f32> = u_xlat0;
  let x_150 : vec3<f32> = (vec3<f32>(x_146.x, x_146.w, x_146.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_151 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_150.x, x_151.y, x_150.y, x_150.z);
  let x_155 : vec4<f32> = u_xlat0;
  let x_156 : vec2<f32> = vec2<f32>(x_155.z, x_155.w);
  let x_157 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_157.x, x_157.y, x_156.x, x_156.y);
  let x_159 : vec4<f32> = u_xlat1;
  let x_161 : vec4<f32> = u_xlat1;
  let x_163 : vec2<f32> = (vec2<f32>(x_159.z, x_159.z) + vec2<f32>(x_161.x, x_161.w));
  let x_164 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_163.x, x_163.y, x_164.z, x_164.w);
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD4_1 : vec4<f32>,
}

@vertex
fn main(@location(1) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD1, gl_Position, vs_TEXCOORD0, vs_TEXCOORD4);
}

