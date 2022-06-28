struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(6) var<uniform> x_30 : VGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat6 : f32;

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
  let x_36 : vec4<f32> = x_30.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_25.y, x_25.y, x_25.y, x_25.y) * x_36);
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
  let x_95 : vec4<f32> = x_30.unity_MatrixVP[3i];
  let x_96 : vec4<f32> = u_xlat1;
  let x_99 : vec4<f32> = u_xlat0;
  gl_Position = ((x_95 * vec4<f32>(x_96.w, x_96.w, x_96.w, x_96.w)) + x_99);
  let x_103 : vec3<f32> = in_NORMAL0;
  let x_105 : vec4<f32> = x_30.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_103, vec3<f32>(x_105.x, x_105.y, x_105.z));
  let x_111 : vec3<f32> = in_NORMAL0;
  let x_113 : vec4<f32> = x_30.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_111, vec3<f32>(x_113.x, x_113.y, x_113.z));
  let x_117 : vec3<f32> = in_NORMAL0;
  let x_119 : vec4<f32> = x_30.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_117, vec3<f32>(x_119.x, x_119.y, x_119.z));
  let x_125 : vec4<f32> = u_xlat0;
  let x_127 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_125.x, x_125.y, x_125.z), vec3<f32>(x_127.x, x_127.y, x_127.z));
  let x_130 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_130);
  let x_133 : f32 = u_xlat6;
  let x_135 : vec4<f32> = u_xlat0;
  vs_TEXCOORD0 = (vec3<f32>(x_133, x_133, x_133) * vec3<f32>(x_135.x, x_135.y, x_135.z));
  vs_TEXCOORD4 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
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
}

@vertex
fn main(@location(1) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD1, gl_Position, vs_TEXCOORD0);
}

