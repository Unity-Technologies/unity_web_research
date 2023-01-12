struct PGlobals {
  x_Color : vec4<f32>,
}

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(2) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_30 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(unity_Lightmap, samplerunity_Lightmap, x_23);
  u_xlat0 = vec3<f32>(x_25.x, x_25.y, x_25.z);
  let x_27 : vec3<f32> = u_xlat0;
  let x_35 : vec4<f32> = x_30.x_Color;
  u_xlat0 = (x_27 * vec3<f32>(x_35.x, x_35.y, x_35.z));
  let x_45 : vec2<f32> = vs_TEXCOORD2;
  let x_46 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_45);
  u_xlat1 = vec3<f32>(x_46.x, x_46.y, x_46.z);
  let x_50 : vec3<f32> = u_xlat0;
  let x_51 : vec3<f32> = u_xlat1;
  let x_52 : vec3<f32> = (x_50 * x_51);
  let x_53 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_52.x, x_52.y, x_52.z, x_53.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD2_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

