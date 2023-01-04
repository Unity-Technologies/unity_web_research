struct PGlobals {
  x_ForceNoMotion : i32,
}

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_81 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = vs_TEXCOORD0;
  let x_15 : vec4<f32> = vs_TEXCOORD0;
  let x_17 : vec2<f32> = (vec2<f32>(x_13.x, x_13.y) / vec2<f32>(x_15.w, x_15.w));
  let x_18 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_17.x, x_17.y, x_18.z, x_18.w);
  let x_20 : vec4<f32> = u_xlat0;
  let x_24 : vec2<f32> = (vec2<f32>(x_20.x, x_20.y) + vec2<f32>(1.0f, 1.0f));
  let x_25 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_24.x, x_24.y, x_25.z, x_25.w);
  let x_31 : f32 = u_xlat0.x;
  u_xlat0.x = (x_31 * 0.5f);
  let x_37 : f32 = u_xlat0.y;
  u_xlat0.z = ((-(x_37) * 0.5f) + 1.0f);
  let x_47 : vec4<f32> = vs_TEXCOORD1;
  let x_49 : vec4<f32> = vs_TEXCOORD1;
  let x_51 : vec2<f32> = (vec2<f32>(x_47.x, x_47.y) / vec2<f32>(x_49.w, x_49.w));
  let x_52 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_51.x, x_52.y, x_51.y);
  let x_54 : vec3<f32> = u_xlat2;
  let x_56 : vec2<f32> = (vec2<f32>(x_54.x, x_54.z) + vec2<f32>(1.0f, 1.0f));
  let x_57 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_56.x, x_57.y, x_56.y);
  let x_61 : f32 = u_xlat2.x;
  u_xlat1.x = (x_61 * 0.5f);
  let x_65 : f32 = u_xlat2.z;
  u_xlat1.z = ((-(x_65) * 0.5f) + 1.0f);
  let x_70 : vec4<f32> = u_xlat0;
  let x_72 : vec3<f32> = u_xlat1;
  let x_75 : vec2<f32> = (vec2<f32>(x_70.x, x_70.z) + -(vec2<f32>(x_72.x, x_72.z)));
  let x_76 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_75.x, x_75.y, x_76.z, x_76.w);
  let x_85 : i32 = x_81.x_ForceNoMotion;
  u_xlat1.x = select(0.0f, 1.0f, (x_85 != 0i));
  u_xlat0.z = 0.0f;
  u_xlat0.w = 1.0f;
  let x_96 : vec3<f32> = u_xlat1;
  let x_98 : vec4<f32> = u_xlat0;
  let x_101 : vec4<f32> = u_xlat0;
  SV_Target0 = ((vec4<f32>(x_96.x, x_96.x, x_96.x, x_96.x) * -(x_98)) + x_101);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

