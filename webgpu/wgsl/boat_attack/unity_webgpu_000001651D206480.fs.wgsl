@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
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
  let x_37 : vec4<f32> = u_xlat0;
  let x_41 : vec4<f32> = vs_TEXCOORD4;
  let x_43 : vec2<f32> = (vec2<f32>(x_37.x, x_37.y) * vec2<f32>(x_41.x, x_41.w));
  let x_44 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_43.x, x_44.y, x_44.z, x_43.y);
  let x_46 : vec4<f32> = u_xlat0;
  let x_49 : vec4<f32> = vs_TEXCOORD3;
  let x_51 : vec2<f32> = (vec2<f32>(x_46.w, x_46.w) * vec2<f32>(x_49.x, x_49.z));
  let x_52 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_51.x, x_52.y, x_52.z, x_51.y);
  let x_54 : vec4<f32> = u_xlat0;
  let x_57 : vec4<f32> = vs_TEXCOORD2;
  let x_60 : vec4<f32> = u_xlat0;
  let x_62 : vec2<f32> = ((vec2<f32>(x_54.z, x_54.z) * vec2<f32>(x_57.x, x_57.z)) + vec2<f32>(x_60.x, x_60.w));
  let x_63 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_62.x, x_63.y, x_62.y, x_63.w);
  let x_65 : vec4<f32> = u_xlat0;
  let x_68 : vec4<f32> = vs_TEXCOORD1;
  let x_70 : vec2<f32> = (vec2<f32>(x_65.x, x_65.z) + vec2<f32>(x_68.x, x_68.z));
  let x_71 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_70.x, x_70.y, x_71.z, x_71.w);
  let x_73 : vec4<f32> = u_xlat0;
  let x_75 : vec4<f32> = vs_TEXCOORD4;
  let x_77 : vec2<f32> = (vec2<f32>(x_73.x, x_73.y) * vec2<f32>(x_75.y, x_75.y));
  let x_78 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_78.x, x_77.x, x_77.y, x_78.w);
  let x_82 : vec4<f32> = u_xlat1;
  SV_Target0 = -(x_82);
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

