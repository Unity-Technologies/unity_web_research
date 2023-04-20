diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_FlareColorValue : vec4<f32>,
  /* @offset(16) */
  x_FlareData3 : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : f32;

@group(1) @binding(0) var<uniform> x_47 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD1 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_16.x, x_16.y, x_17.z, x_17.w);
  let x_19 : vec4<f32> = u_xlat0;
  let x_21 : vec4<f32> = u_xlat0;
  let x_23 : vec2<f32> = (vec2<f32>(x_19.x, x_19.y) + vec2<f32>(x_21.x, x_21.y));
  let x_24 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_23.x, x_23.y, x_24.z, x_24.w);
  let x_26 : vec4<f32> = u_xlat0;
  let x_28 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_26.x, x_26.y), vec2<f32>(x_28.x, x_28.y));
  let x_36 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_36);
  let x_40 : f32 = u_xlat0.x;
  u_xlat0.x = (x_40 + -1.0f);
  let x_53 : f32 = x_47.x_FlareData3.y;
  u_xlat1 = (x_53 + -1.0f);
  let x_56 : f32 = u_xlat0.x;
  let x_57 : f32 = u_xlat1;
  u_xlat0.x = (x_56 / x_57);
  let x_61 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_61, 0.0f, 1.0f);
  let x_67 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_67);
  let x_71 : f32 = u_xlat0.x;
  let x_74 : f32 = x_47.x_FlareData3.z;
  u_xlat0.x = (x_71 * x_74);
  let x_78 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_78);
  let x_81 : vec4<f32> = u_xlat0;
  let x_86 : vec4<f32> = x_47.x_FlareColorValue;
  u_xlat0 = (vec4<f32>(x_81.x, x_81.x, x_81.x, x_81.x) * x_86);
  let x_90 : vec4<f32> = u_xlat0;
  let x_93 : f32 = vs_TEXCOORD1;
  SV_Target0 = (x_90 * vec4<f32>(x_93, x_93, x_93, x_93));
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


