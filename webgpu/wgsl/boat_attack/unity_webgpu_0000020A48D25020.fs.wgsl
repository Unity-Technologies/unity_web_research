diagnostic(off, derivative_uniformity);

var<private> u_xlat0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlatb0 : bool;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_22 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_22);
  u_xlat0.x = x_24.w;
  let x_32 : f32 = u_xlat0.x;
  u_xlat0.x = (x_32 + -0.00100000004749745131f);
  let x_40 : f32 = u_xlat0.x;
  u_xlatb0 = (x_40 < 0.0f);
  let x_43 : bool = u_xlatb0;
  if (((select(0i, 1i, x_43) * -1i) != 0i)) {
    discard;
  }
  let x_59 : f32 = vs_TEXCOORD1.z;
  u_xlat0.x = (x_59 + 1.0f);
  let x_63 : vec4<f32> = vs_TEXCOORD1;
  let x_65 : vec2<f32> = u_xlat0;
  u_xlat0 = (vec2<f32>(x_63.x, x_63.y) / vec2<f32>(x_65.x, x_65.x));
  let x_70 : vec2<f32> = u_xlat0;
  let x_76 : vec2<f32> = ((x_70 * vec2<f32>(0.28126230835914611816f, 0.28126230835914611816f)) + vec2<f32>(0.5f, 0.5f));
  let x_77 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_76.x, x_76.y, x_77.z, x_77.w);
  let x_79 : vec4<f32> = vs_TEXCOORD1;
  u_xlat0 = (vec2<f32>(x_79.w, x_79.w) * vec2<f32>(1.0f, 255.0f));
  let x_84 : vec2<f32> = u_xlat0;
  u_xlat0 = fract(x_84);
  let x_88 : f32 = u_xlat0.y;
  let x_93 : f32 = u_xlat0.x;
  SV_Target0.z = ((-(x_88) * 0.0039215688593685627f) + x_93);
  let x_98 : f32 = u_xlat0.y;
  SV_Target0.w = x_98;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


