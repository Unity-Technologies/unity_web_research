diagnostic(off, derivative_uniformity);

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlat0 : vec2<f32>;

@group(0) @binding(1) var x_SecondTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_SecondTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat2 : f32;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> u_xlat1 : f32;

@group(0) @binding(2) var x_ThirdTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_ThirdTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  SV_Target0.w = 1.0f;
  let x_30 : vec2<f32> = vs_TEXCOORD0;
  let x_31 : vec4<f32> = textureSample(x_SecondTex, sampler_SecondTex, x_30);
  u_xlat0.x = x_31.w;
  let x_36 : vec2<f32> = u_xlat0;
  u_xlat0 = (vec2<f32>(x_36.x, x_36.x) * vec2<f32>(0.390625f, 1.984375f));
  let x_48 : vec2<f32> = vs_TEXCOORD0;
  let x_49 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_48);
  u_xlat2 = x_49.w;
  let x_51 : f32 = u_xlat2;
  let x_55 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_51 * 1.15625f) + -(x_55));
  let x_60 : f32 = u_xlat2;
  let x_64 : f32 = u_xlat0.y;
  u_xlat1 = ((x_60 * 1.15625f) + x_64);
  let x_66 : f32 = u_xlat1;
  SV_Target0.z = (x_66 + -1.06861996650695800781f);
  let x_76 : vec2<f32> = vs_TEXCOORD0;
  let x_77 : vec4<f32> = textureSample(x_ThirdTex, sampler_ThirdTex, x_76);
  u_xlat1 = x_77.w;
  let x_79 : f32 = u_xlat1;
  let x_84 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_79) * 0.8125f) + x_84);
  let x_87 : f32 = u_xlat1;
  u_xlat1 = (x_87 * 1.59375f);
  let x_90 : f32 = u_xlat2;
  let x_92 : f32 = u_xlat1;
  u_xlat0.y = ((x_90 * 1.15625f) + x_92);
  let x_95 : vec2<f32> = u_xlat0;
  let x_100 : vec2<f32> = (vec2<f32>(x_95.y, x_95.x) + vec2<f32>(-0.87253999710083007812f, 0.53136998414993286133f));
  let x_101 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_100.x, x_100.y, x_101.z, x_101.w);
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


