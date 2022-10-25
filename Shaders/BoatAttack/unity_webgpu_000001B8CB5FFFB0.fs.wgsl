@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = x_24;
  let x_26 : vec4<f32> = u_xlat0;
  let x_33 : vec3<f32> = ((vec3<f32>(x_26.w, x_26.z, x_26.y) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_34 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_34.x, x_33.x, x_33.y, x_33.z);
  let x_38 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = vs_TEXCOORD4;
  let x_44 : vec2<f32> = (vec2<f32>(x_38.x, x_38.y) * vec2<f32>(x_42.x, x_42.w));
  let x_45 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_44.x, x_45.y, x_45.z, x_44.y);
  let x_47 : vec4<f32> = u_xlat0;
  let x_50 : vec4<f32> = vs_TEXCOORD3;
  let x_52 : vec2<f32> = (vec2<f32>(x_47.w, x_47.w) * vec2<f32>(x_50.x, x_50.z));
  let x_53 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_52.x, x_53.y, x_53.z, x_52.y);
  let x_55 : vec4<f32> = u_xlat0;
  let x_58 : vec4<f32> = vs_TEXCOORD2;
  let x_61 : vec4<f32> = u_xlat0;
  let x_63 : vec2<f32> = ((vec2<f32>(x_55.z, x_55.z) * vec2<f32>(x_58.x, x_58.z)) + vec2<f32>(x_61.x, x_61.w));
  let x_64 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_63.x, x_64.y, x_63.y, x_64.w);
  let x_66 : vec4<f32> = u_xlat0;
  let x_69 : vec4<f32> = vs_TEXCOORD1;
  let x_71 : vec2<f32> = (vec2<f32>(x_66.x, x_66.z) + vec2<f32>(x_69.x, x_69.z));
  let x_72 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_71.x, x_71.y, x_72.z, x_72.w);
  let x_74 : vec4<f32> = u_xlat0;
  let x_76 : vec4<f32> = vs_TEXCOORD4;
  let x_78 : vec2<f32> = (vec2<f32>(x_74.x, x_74.y) * vec2<f32>(x_76.y, x_76.y));
  let x_79 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_79.x, x_78.x, x_78.y, x_79.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

