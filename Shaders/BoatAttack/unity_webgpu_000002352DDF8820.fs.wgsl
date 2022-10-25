struct PGlobals {
  x_FlareColorValue : vec4<f32>,
  x_FlareData3 : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_39 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec2<f32>;
  var u_xlat1 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = (x_12 + vec2<f32>(-0.5f, -0.5f));
  let x_16 : vec2<f32> = u_xlat0;
  let x_17 : vec2<f32> = u_xlat0;
  u_xlat0 = (x_16 + x_17);
  let x_19 : vec2<f32> = u_xlat0;
  let x_20 : vec2<f32> = u_xlat0;
  u_xlat0.x = dot(x_19, x_20);
  let x_27 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_27);
  let x_31 : f32 = u_xlat0.x;
  u_xlat0.x = (x_31 + -1.0f);
  let x_45 : f32 = x_39.x_FlareData3.y;
  u_xlat1 = (x_45 + -1.0f);
  let x_48 : f32 = u_xlat0.x;
  let x_49 : f32 = u_xlat1;
  u_xlat0.x = (x_48 / x_49);
  let x_53 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_53, 0.0f, 1.0f);
  let x_59 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_59);
  let x_63 : f32 = u_xlat0.x;
  let x_66 : f32 = x_39.x_FlareData3.z;
  u_xlat0.x = (x_63 * x_66);
  let x_70 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_70);
  let x_75 : vec2<f32> = u_xlat0;
  let x_80 : vec4<f32> = x_39.x_FlareColorValue;
  SV_Target0 = (vec4<f32>(x_75.x, x_75.x, x_75.x, x_75.x) * x_80);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

