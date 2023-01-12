struct PGlobals {
  x_Params : vec4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_87 : PGlobals;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat6 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = vec3<f32>(x_25.x, x_25.y, x_25.z);
  let x_27 : vec3<f32> = u_xlat0;
  u_xlat0 = x_27;
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_28, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_39 : f32 = u_xlat0.y;
  u_xlat6 = (x_39 * -367.857116699f);
  let x_44 : f32 = u_xlat0.x;
  let x_46 : f32 = u_xlat6;
  u_xlat6 = ((x_44 * -367.857116699f) + -(x_46));
  let x_51 : f32 = u_xlat0.z;
  let x_54 : f32 = u_xlat6;
  u_xlat6 = ((x_51 * 16511.744140625f) + x_54);
  let x_57 : f32 = u_xlat6;
  u_xlat1.z = (x_57 * 6.0796734e-05f);
  let x_62 : f32 = u_xlat1.z;
  u_xlat1.z = clamp(x_62, 0.0f, 1.0f);
  let x_65 : vec3<f32> = u_xlat0;
  u_xlat6 = dot(vec2<f32>(x_65.x, x_65.y), vec2<f32>(4833.038085938f, 11677.196289062f));
  let x_71 : f32 = u_xlat6;
  u_xlat6 = (x_71 * 6.0796734e-05f);
  let x_73 : f32 = u_xlat6;
  let x_76 : vec2<f32> = min(vec2<f32>(x_73, x_73), vec2<f32>(1.0f, 1.0f));
  let x_77 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_76.x, x_76.y, x_77.z);
  let x_79 : vec3<f32> = u_xlat0;
  let x_81 : vec3<f32> = u_xlat1;
  u_xlat1 = (-(x_79) + x_81);
  let x_92 : vec4<f32> = x_87.x_Params;
  let x_94 : vec3<f32> = u_xlat1;
  let x_96 : vec3<f32> = u_xlat0;
  let x_97 : vec3<f32> = ((vec3<f32>(x_92.x, x_92.x, x_92.x) * x_94) + x_96);
  let x_98 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

