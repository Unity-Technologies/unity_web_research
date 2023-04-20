diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_Cutoff : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat3 : f32;

@group(1) @binding(0) var<uniform> x_34 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_31 : f32 = u_xlat0.w;
  let x_39 : f32 = x_34.x_Cutoff;
  u_xlat3 = (x_31 + -(x_39));
  let x_45 : vec4<f32> = u_xlat0;
  let x_48 : vec4<f32> = vs_TEXCOORD1;
  let x_50 : vec3<f32> = (vec3<f32>(x_45.x, x_45.y, x_45.z) * vec3<f32>(x_48.x, x_48.y, x_48.z));
  let x_51 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_50.x, x_50.y, x_50.z, x_51.w);
  let x_56 : f32 = u_xlat3;
  u_xlatb0 = (x_56 < 0.0f);
  let x_59 : bool = u_xlatb0;
  if (((select(0i, 1i, x_59) * -1i) != 0i)) {
    discard;
  }
  SV_Target0.w = 1.0f;
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


