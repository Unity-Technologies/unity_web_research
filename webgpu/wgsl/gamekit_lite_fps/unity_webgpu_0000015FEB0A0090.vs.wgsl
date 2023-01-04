struct VGlobals {
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

var<private> u_xlat6 : f32;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

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
  let x_84 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_85 : vec4<f32> = u_xlat1;
  let x_88 : vec4<f32> = u_xlat0;
  gl_Position = ((x_84 * vec4<f32>(x_85.w, x_85.w, x_85.w, x_85.w)) + x_88);
  let x_96 : vec4<f32> = in_TEXCOORD0;
  let x_99 : vec4<f32> = x_17.x_MainTex_ST;
  let x_103 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_96.x, x_96.y) * vec2<f32>(x_99.x, x_99.y)) + vec2<f32>(x_103.z, x_103.w));
  let x_108 : vec3<f32> = in_NORMAL0;
  let x_110 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_108, vec3<f32>(x_110.x, x_110.y, x_110.z));
  let x_116 : vec3<f32> = in_NORMAL0;
  let x_118 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_116, vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_122 : vec3<f32> = in_NORMAL0;
  let x_124 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_122, vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_130 : vec4<f32> = u_xlat0;
  let x_132 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_130.x, x_130.y, x_130.z), vec3<f32>(x_132.x, x_132.y, x_132.z));
  let x_135 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_135);
  let x_139 : f32 = u_xlat6;
  let x_141 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = (vec3<f32>(x_139, x_139, x_139) * vec3<f32>(x_141.x, x_141.y, x_141.z));
  vs_TEXCOORD3 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1);
}

