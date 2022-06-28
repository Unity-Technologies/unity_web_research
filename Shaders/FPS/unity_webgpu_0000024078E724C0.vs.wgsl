struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var<uniform> x_30 : VGlobals;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat9 : f32;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

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
  let x_59 : vec4<f32> = x_30.unity_ObjectToWorld[3i];
  let x_61 : vec4<f32> = in_POSITION0;
  let x_64 : vec4<f32> = u_xlat0;
  let x_66 : vec3<f32> = ((vec3<f32>(x_59.x, x_59.y, x_59.z) * vec3<f32>(x_61.w, x_61.w, x_61.w)) + vec3<f32>(x_64.x, x_64.y, x_64.z));
  let x_67 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_66.x, x_66.y, x_66.z, x_67.w);
  let x_70 : vec4<f32> = u_xlat1;
  let x_73 : vec4<f32> = x_30.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_70.y, x_70.y, x_70.y, x_70.y) * x_73);
  let x_76 : vec4<f32> = x_30.unity_MatrixVP[0i];
  let x_77 : vec4<f32> = u_xlat1;
  let x_80 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_76 * vec4<f32>(x_77.x, x_77.x, x_77.x, x_77.x)) + x_80);
  let x_83 : vec4<f32> = x_30.unity_MatrixVP[2i];
  let x_84 : vec4<f32> = u_xlat1;
  let x_87 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_83 * vec4<f32>(x_84.z, x_84.z, x_84.z, x_84.z)) + x_87);
  let x_96 : vec4<f32> = x_30.unity_MatrixVP[3i];
  let x_97 : vec4<f32> = u_xlat1;
  let x_100 : vec4<f32> = u_xlat2;
  gl_Position = ((x_96 * vec4<f32>(x_97.w, x_97.w, x_97.w, x_97.w)) + x_100);
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
  u_xlat9 = dot(vec3<f32>(x_126.x, x_126.y, x_126.z), vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_131 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_131);
  let x_135 : f32 = u_xlat9;
  let x_137 : vec4<f32> = u_xlat1;
  vs_TEXCOORD0 = (vec3<f32>(x_135, x_135, x_135) * vec3<f32>(x_137.x, x_137.y, x_137.z));
  let x_142 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = vec3<f32>(x_142.x, x_142.y, x_142.z);
  let x_145 : vec4<f32> = u_xlat0;
  let x_150 : vec3<f32> = x_30.x_WorldSpaceCameraPos;
  vs_TEXCOORD2 = (-(vec3<f32>(x_145.x, x_145.y, x_145.z)) + x_150);
  vs_TEXCOORD3 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(1)
  vs_TEXCOORD2_1 : vec3<f32>,
}

@vertex
fn main(@location(1) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD2);
}

