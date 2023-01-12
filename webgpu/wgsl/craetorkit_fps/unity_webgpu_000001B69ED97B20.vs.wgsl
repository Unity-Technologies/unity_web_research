struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_Rotation : f32,
}

@group(1) @binding(1) var<uniform> x_13 : VGlobals;

var<private> in_POSITION0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : f32 = x_13.x_Rotation;
  u_xlat0.x = (x_18 * 0.017453294f);
  let x_27 : f32 = u_xlat0.x;
  u_xlat1.x = cos(x_27);
  let x_31 : f32 = u_xlat0.x;
  u_xlat0.x = sin(x_31);
  let x_38 : f32 = u_xlat0.x;
  u_xlat2.x = -(x_38);
  let x_42 : f32 = u_xlat1.x;
  u_xlat2.y = x_42;
  let x_46 : f32 = u_xlat0.x;
  u_xlat2.z = x_46;
  let x_50 : vec3<f32> = u_xlat2;
  let x_54 : vec4<f32> = in_POSITION0;
  u_xlat0.x = dot(vec2<f32>(x_50.z, x_50.y), vec2<f32>(x_54.x, x_54.z));
  let x_59 : vec3<f32> = u_xlat2;
  let x_61 : vec4<f32> = in_POSITION0;
  u_xlat3 = dot(vec2<f32>(x_59.y, x_59.x), vec2<f32>(x_61.x, x_61.z));
  let x_64 : vec4<f32> = in_POSITION0;
  let x_70 : vec4<f32> = x_13.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_64.y, x_64.y, x_64.y, x_64.y) * x_70);
  let x_73 : vec4<f32> = x_13.unity_ObjectToWorld[0i];
  let x_74 : f32 = u_xlat3;
  let x_77 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_73 * vec4<f32>(x_74, x_74, x_74, x_74)) + x_77);
  let x_80 : vec4<f32> = x_13.unity_ObjectToWorld[2i];
  let x_81 : vec4<f32> = u_xlat0;
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_80 * vec4<f32>(x_81.x, x_81.x, x_81.x, x_81.x)) + x_84);
  let x_86 : vec4<f32> = u_xlat0;
  let x_89 : vec4<f32> = x_13.unity_ObjectToWorld[3i];
  u_xlat0 = (x_86 + x_89);
  let x_91 : vec4<f32> = u_xlat0;
  let x_94 : vec4<f32> = x_13.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_91.y, x_91.y, x_91.y, x_91.y) * x_94);
  let x_97 : vec4<f32> = x_13.unity_MatrixVP[0i];
  let x_98 : vec4<f32> = u_xlat0;
  let x_101 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_97 * vec4<f32>(x_98.x, x_98.x, x_98.x, x_98.x)) + x_101);
  let x_104 : vec4<f32> = x_13.unity_MatrixVP[2i];
  let x_105 : vec4<f32> = u_xlat0;
  let x_108 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_104 * vec4<f32>(x_105.z, x_105.z, x_105.z, x_105.z)) + x_108);
  let x_115 : vec4<f32> = x_13.unity_MatrixVP[3i];
  let x_116 : vec4<f32> = u_xlat0;
  let x_119 : vec4<f32> = u_xlat1;
  gl_Position = ((x_115 * vec4<f32>(x_116.w, x_116.w, x_116.w, x_116.w)) + x_119);
  let x_125 : vec4<f32> = in_POSITION0;
  vs_TEXCOORD0 = vec3<f32>(x_125.x, x_125.y, x_125.z);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0);
}

