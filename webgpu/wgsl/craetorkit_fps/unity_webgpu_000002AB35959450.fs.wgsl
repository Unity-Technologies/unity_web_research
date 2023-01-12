@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragDepth : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlatb1 : vec4<bool>;
  var hlslcc_orTemp : vec4<bool>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = x_24;
  let x_29 : vec4<f32> = u_xlat0;
  u_xlatb1 = (x_29 < vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_34 : vec4<bool> = u_xlatb1;
  hlslcc_orTemp = x_34;
  let x_39 : bool = u_xlatb1.z;
  let x_42 : bool = u_xlatb1.x;
  hlslcc_orTemp.x = (x_39 | x_42);
  let x_47 : bool = u_xlatb1.w;
  let x_50 : bool = u_xlatb1.y;
  hlslcc_orTemp.y = (x_47 | x_50);
  let x_53 : vec4<bool> = hlslcc_orTemp;
  u_xlatb1 = x_53;
  let x_55 : bool = u_xlatb1.y;
  let x_57 : bool = u_xlatb1.x;
  u_xlatb1.x = (x_55 | x_57);
  let x_61 : bool = u_xlatb1.x;
  if (((select(0i, 1i, x_61) * -1i) != 0i)) {
    discard;
  }
  let x_74 : vec4<f32> = u_xlat0;
  SV_Target0 = x_74;
  let x_79 : f32 = u_xlat0.x;
  gl_FragDepth = x_79;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @builtin(frag_depth)
  gl_FragDepth_1 : f32,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0, gl_FragDepth);
}

